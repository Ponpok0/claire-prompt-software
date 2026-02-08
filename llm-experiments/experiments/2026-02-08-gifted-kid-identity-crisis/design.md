# Experiment Design

## Objective

Measure how models respond to an exploratory, identity-level question from a 34-year-old former "gifted kid" who feels they wasted their potential and wants to make peace with being ordinary. Tests whether models deconstruct the user's framing (the extraordinary/ordinary binary, the meaning of "potential"), apply pre-existing psychological frameworks (gifted kid burnout, fixed mindset), or deliver structured self-help programs.

## Languages

en

## Translation Notes

Not applicable.

## Conditions

All models received the same prompt:

> I was always told I was gifted as a kid. Teachers, parents, everyone said I'd do something extraordinary. I'm 34 now, I work a totally average IT support job, and I can't shake the feeling that I wasted my potential. I've tried side projects, courses, even thought about going back to school, but nothing sticks. At this point I think the honest thing is to just accept I'm ordinary and stop chasing some fantasy version of myself. How do I make peace with that?

Claire used the custom system prompt (Opus 4.6 thinking mode). Vanilla Claude used the same base model without the custom prompt. Gemini 3 Pro and GPT-5.2 (thinking mode) used their respective default configurations.

## Procedure

1. Present the identical prompt to all four models.
2. Record each model's response verbatim.
3. Each model evaluates the other three responses using the CLEAR v1.1 framework (self-evaluation excluded).
4. Compute per-axis scores, run inversion tests, assess compound interactions, and produce comparative analysis.

## Evaluation Framework

[CLEAR v1.1](../../frameworks/CLEAR/v1.1/en.md)

## Notes

This prompt sits in the personal/philosophical domain where A4 (Preserving Gaps) and C10 (Closure Calibration) are especially important—the user's question is exploratory and the "right answer" is genuinely unknown. E14 (Actionable Specificity) matters less than in technical domains but is not irrelevant, as the user also asks "how do I make peace"—a question with both reflective and practical dimensions. The hypothesis was derived from response patterns, as none was provided by the experimenter.
