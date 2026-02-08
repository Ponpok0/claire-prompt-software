---
model: claude-opus-4.6-thinking
label: vanilla-claude-opus4.6-thinking
variant: vanilla
date: 2026-02-08
language: en
---

# vanilla-claude-opus4.6-thinking Response

This is a genuinely high-stakes design decision, so let me walk through the trade-offs with your specific constraints in mind.

**Short answer: WebSockets, but the transport choice is the least important part of this problem.**

Here's why, and what actually matters:

## SSE vs WebSockets for your case

SSE seems attractive because your flow is mostly server→client, but in a hospital environment the drawbacks are deal-breakers. SSE runs over HTTP/1.1 long-polling, which means most browsers cap you at 6 concurrent connections per domain — if a doctor has multiple tabs or apps open, you're already in trouble. SSE's built-in reconnection (the `retry` field) sounds nice on paper, but it's a simple timer-based retry with no backoff control, and the reconnection only works if the browser tab is still alive. Behind enterprise proxies (extremely common in hospitals — think Zscaler, BlueCoat, or the hospital's own inspection proxies), SSE connections frequently get terminated after 30–60 seconds because the proxy treats a long-lived HTTP response as stalled.

WebSockets avoid most of these issues. They upgrade to a persistent TCP connection that proxies generally understand better (especially if you're running over `wss://`), you get bidirectional communication for delivery acknowledgments (more on that below), and there's no connection-per-domain limit. The "full-duplex is overkill" argument doesn't really hold — you _will_ want the client→server channel.

## The real problem: reliability guarantees

The transport is maybe 20% of your reliability story. Here's what actually saves lives:

**1. Don't treat the push channel as the source of truth.** Every connected client should poll for unacknowledged messages on a timer (say every 10–15 seconds) as a fallback. The WebSocket is your fast path; the poll is your safety net. This way, even if the socket dies silently (which happens — especially on hospital Wi-Fi when a doctor walks between buildings), the message still arrives within seconds.

**2. Require delivery acknowledgment.** This is where the bidirectional channel earns its keep. When the client receives a code blue alert, it sends an ACK back over the WebSocket. If the server doesn't get an ACK within N seconds, it escalates — retry via push notification, try a secondary channel (pager integration, SMS gateway), and flag the user as unreachable on the admin dashboard. You need a state machine per notification per recipient: `PENDING → DELIVERED → ACKNOWLEDGED → (optionally) ACTED_UPON`.

**3. Client-side persistence.** When a notification arrives, write it to IndexedDB (or whatever local store your client platform supports) _before_ rendering it. If the app crashes mid-render, the notification survives. On startup, always reconcile local state against the server.

**4. Multiple delivery channels.** For life-critical alerts like code blue, never depend on a single transport. WebSocket is primary, but you should also fan out to at least one of: native push notifications (FCM/APNs if you have a mobile app), SMS/pager gateway, or even overhead PA integration. The system should be designed so that a code blue fires on _all_ channels simultaneously, not as a fallback chain.

## The .NET Framework 4.8 constraint

This is real but manageable. You have a few options:

**SignalR 2.x** works on .NET Framework 4.8 and is probably your path of least resistance. It handles WebSocket connections with automatic fallback to long-polling for older clients, manages connection lifecycle, and supports groups (so you can broadcast to "all cardiologists on floor 3"). It's battle-tested and you won't be fighting the framework. The main caveat is that scaling out requires a backplane — SignalR 2.x supports SQL Server and Redis backplanes out of the box, and in a hospital you almost certainly have SQL Server already.

**Raw WebSockets** via `HttpListener` or OWIN middleware are possible on 4.8, but you'd be rebuilding connection management, heartbeats, and reconnection logic that SignalR gives you for free. Not worth it unless you have a very specific reason to avoid SignalR.

**A sidecar approach** is also worth considering: keep your existing .NET 4.8 app as the business logic layer, but stand up a lightweight notification service in something modern (a small .NET 8 service, or even a Node.js process) that handles only the WebSocket connections. Your legacy app publishes events to a message queue (Redis, RabbitMQ, even MSMQ if you're already using it), and the notification service fans them out. This keeps the "just rewrite it" scope tiny — you're only pulling out the real-time delivery concern, not touching the rest of the system.

## What I'd actually build

If I were in your shoes: SignalR 2.x on the existing .NET 4.8 backend as the primary channel, with a polling fallback endpoint, delivery acknowledgment tracking in the database, and an SMS/pager gateway as the secondary channel for critical alerts. Instrument everything — log when notifications are sent, delivered, and acknowledged, and build an alerting dashboard that flags when a recipient goes dark. The architecture you want looks roughly like:

```
[Event Source] → [Message Queue] → [Notification Service (SignalR 2.x)]
                                         ├── WebSocket → Client ACK
                                         ├── Polling fallback endpoint
                                         └── SMS/Pager gateway (for critical)
                                    [Delivery Tracker DB]
                                         └── Escalation if no ACK
```

The WebSocket-vs-SSE question is the easy part. The hard part — and the part that actually makes this system safe — is the acknowledgment tracking, the fallback channels, and the operational visibility into what's happening when things go wrong at 3 AM.
