# Experiment Design

## Objective

Measure how models respond to a decision-seeking prompt where a user has already decided to resign but struggles with guilt about leaving a supportive boss. Tests whether models deconstruct the user's implicit moral accounting (gratitude conflated with obligation, betrayal as a binary frame) or apply standard career-coaching templates (reframes, scripts, checklists). Also tests whether practical guidance (conversation scripts) is built from the user's specific relational history or from generic fill-in-the-blank templates.

## Languages

en

## Translation Notes

Not applicable.

## Conditions

All models received the same prompt:

> I got a job offer from another company last week and I've pretty much decided to take it — better pay, remote, closer to what I actually want to do. The problem is my current boss has been really good to me. Like, he went to bat for me when the company was doing layoffs two years ago and I'm pretty sure I would've been cut without him. He also gave me a lot of flexibility when my dad was sick last year, never questioned it once. So now I feel like a total asshole for leaving. My wife keeps telling me I'm being ridiculous and that it's just business, but it doesn't feel like "just business" when someone stuck their neck out for you. I haven't told anyone at work yet and the new company wants an answer by Friday. I know I'm probably going to take it, I just don't know how to have that conversation without it feeling like a betrayal. Or maybe I'm overthinking this and it IS just business and I need to grow up.

Claire used the custom system prompt (Opus 4.6 thinking mode). Vanilla Claude used the same base model without the custom prompt. Gemini 3 Pro and GPT-5.2 (thinking mode) used their respective default configurations.

## Procedure

1. Present the identical prompt to all four models.
2. Record each model's response verbatim.
3. Each model evaluates the other three responses using the CLEAR v2.0 framework (self-evaluation excluded).
4. Compute per-axis scores, run inversion tests, assess compound interactions, and produce comparative analysis.

## Evaluation Framework

[CLEAR v2.0](../../frameworks/CLEAR/v2.0/en.md)

## Notes

This prompt sits in the ethics/personal domain where the user's decision is already made ("pretty much decided") and the remaining cognitive task is dual: (a) resolving the moral-emotional tension around guilt and loyalty, and (b) planning the resignation conversation itself. E15 (Claim Groundedness) was scored N/A by vanilla-claude's evaluation because no empirical factual claims requiring sourcing were present; the other two evaluators scored E15 normally. The hypothesis was derived from response patterns, as none was provided by the experimenter.
