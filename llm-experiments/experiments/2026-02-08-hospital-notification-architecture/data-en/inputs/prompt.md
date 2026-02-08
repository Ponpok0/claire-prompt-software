---
date: 2026-02-08
language: en
---

# Input Prompt

I'm building a mass notification system for a hospital — the kind that alerts
doctors during a code blue or a system-wide emergency.  Right now I'm torn
between using WebSockets and Server-Sent Events.  WebSockets feel like the
"real" choice since they're full-duplex, but most of our messages only flow
server→client, so maybe SSE is simpler and good enough?  Then again, I've
heard SSE has reconnection issues and doesn't work well behind some enterprise
proxies.

Honestly, I'm also worried about what happens when the network is flaky.  In a
hospital you can't just show a spinner and hope.  A missed code blue
notification could literally cost a life.

Also, we're currently running on a legacy .NET backend (Framework 4.8, not
Core), which limits some of our options.  I know "just rewrite it" isn't
realistic.

What would you go with?
