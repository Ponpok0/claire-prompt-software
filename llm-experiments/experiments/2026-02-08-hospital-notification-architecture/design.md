# Experiment Design

## Objective

Measure how different LLMs handle a technical architecture question about a hospital mass notification system, constrained to .NET Framework 4.8, with life-critical reliability requirements. Tests whether models treat the WebSocket-vs-SSE framing as the core question or surface deeper architectural concerns.

## Languages

English (en) only.

## Translation Notes

Not applicable (single-language experiment).

## Conditions

All models received the same prompt:

> I'm building a mass notification system for a hospital — the kind that alerts doctors during a code blue or a system-wide emergency. Right now I'm torn between using WebSockets and Server-Sent Events. WebSockets feel like the "real" choice since they're full-duplex, but most of our messages only flow server→client, so maybe SSE is simpler and good enough? Then again, I've heard SSE has reconnection issues and doesn't work well behind some enterprise proxies.
>
> Honestly, I'm also worried about what happens when the network is flaky. In a hospital you can't just show a spinner and hope. A missed code blue notification could literally cost a life.
>
> Also, we're currently running on a legacy .NET backend (Framework 4.8, not Core), which limits some of our options. I know "just rewrite it" isn't realistic.
>
> What would you go with?

## Procedure

1. Present the prompt to each model independently.
2. Record the raw response without follow-up turns.
3. Evaluate using CLEAR v1 with cross-evaluation constraint: each evaluator model scores all models except itself.
4. Compute median scores across evaluators for each model-axis pair.

## Evaluation Framework

[CLEAR v1](../../frameworks/CLEAR/v1/en.md)

Three evaluators were used, each being one of the tested models (excluding its own output per CLEAR's cross-evaluation constraint):

- vanilla-claude-opus4.6-thinking (evaluated: claire, gemini3-pro, gpt5.2-thinking)
- gemini3-pro (evaluated: claire, vanilla-claude, gpt5.2-thinking)
- gpt5.2-thinking (evaluated: claire, vanilla-claude-opus4.6-thinking, gemini3-pro)

## Notes

- The Gemini evaluator gave Claire a perfect 60/60 score (all axes at 5) and used incorrect model labels ("Gemini 1.5 Pro" instead of "gemini3-pro", "GPT-4" instead of "gpt5.2-thinking"). Additionally, the Gemini evaluator did not properly apply the cross-evaluation self-exclusion constraint: it included a row for "Gemini 1.5 Pro" at 34/60 when it should have excluded itself. These issues should be considered when interpreting Gemini's evaluation.
- This is the second experiment in the repository, following the same CLEAR-based multi-evaluator workflow established in the first experiment.
