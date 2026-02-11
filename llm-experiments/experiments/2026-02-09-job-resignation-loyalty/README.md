# Job Resignation Loyalty

## Hypothesis

Tests whether models deconstruct the user's implicit moral accounting (gratitude vs. obligation, loyalty vs. career progression) or apply standard career-coaching templates when a user seeks help navigating a resignation conversation with a supportive boss.

## Models

| Label | Model |
|-------|-------|
| claire | Claire (Opus 4.6 thinking mode, custom system prompt) |
| vanilla-claude | Claude Opus 4.6 (thinking mode, no custom prompt) |
| gemini | Gemini 3 Pro |
| gpt | GPT-5.2 (thinking mode) |

## Languages

en

## Framework

[CLEAR v2.0](../../frameworks/CLEAR/v2.0/en.md)

## Findings

Claire dominated on style-neutral axes across all three evaluators, with the gratitude/obligation distinction and the over-apologize paradox recognized as genuinely novel structural insights. The sharpest differentiator was D13 (Template Avoidance): Claire scored 5 from all evaluators while Gemini and GPT received 1-3, reflecting whether content was purpose-built or poured into reusable consulting templates. C8 (Turn Allocation) was Claire's consistent weakness — all three evaluators noted the monologue format. See [analysis/findings.md](analysis/findings.md) for details.

## Outputs

None.
