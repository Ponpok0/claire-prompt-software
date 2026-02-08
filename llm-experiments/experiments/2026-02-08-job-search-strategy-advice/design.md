# Experiment Design

## Objective

Measure how models handle a frustrated user asking a binary decision question ("Should I give up on applications and only network?") that contains an embedded fairness complaint, specific personal data (200 applications, 5 interviews, 0 offers), and a social comparison (friend's referral success). Tests whether models diagnose before prescribing, engage with the user's specific numbers, and avoid generic career coaching templates.

## Languages

en

## Translation Notes

Not applicable.

## Conditions

All models received the same prompt:

> I've been mass-applying to jobs for the past two months — probably around 200 applications. I'm tailoring each resume, writing custom cover letters, and I've had maybe 5 interviews but no offers. My friend who doesn't even try that hard just got a job through someone he knows. I'm starting to think the whole "work hard and you'll be rewarded" thing is a lie. Should I just give up on applications and only focus on networking from now on?

Claire used the custom system prompt (Opus 4.6 thinking mode). Vanilla Claude used the same base model without the custom prompt. Gemini 3 Pro and GPT-5.2 (thinking mode) used their respective default configurations.

## Procedure

1. Present the identical prompt to all four models.
2. Record each model's response verbatim.
3. Each model evaluates the other three responses using the CLEAR v1.1 framework (self-evaluation excluded).
4. Compute per-axis scores, run inversion tests, assess compound interactions, and produce comparative analysis.

## Evaluation Framework

[CLEAR v1.1](../../frameworks/CLEAR/v1.1/en.md)

## Notes

The prompt sits at the intersection of practical advice and emotional support. It tests whether models can distinguish between a volume problem and a conversion problem in the user's job search funnel, and whether they respond to the specific person or deliver generic career coaching. The hypothesis field was derived from response patterns, as none was provided by the experimenter.
