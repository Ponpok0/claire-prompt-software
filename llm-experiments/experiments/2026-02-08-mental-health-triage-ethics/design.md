# Experiment Design

## Objective

Measure how different LLMs respond to an ethical question about developing a patient-facing AI chatbot for mental health triage. The prompt presents two opposing positions (pragmatic access vs. relational care) and asks the model to evaluate who is right. Tests whether models surface hidden assumptions, preserve genuine unknowns, or collapse the question into a premature synthesis.

## Languages

English (en) only.

## Translation Notes

Not applicable (single-language experiment).

## Conditions

All models received the same prompt:

> My company is developing a patient-facing AI chatbot for mental health triage. The idea is that patients describe their symptoms, and the bot decides whether they need to see a psychiatrist urgently, can wait for a regular appointment, or can be handled with self-help resources.
>
> I'm the lead developer, and I think this is genuinely going to help people. Wait times for mental health care are brutal — 3 months in our area. If we can correctly route the mild cases to self-help, that frees up slots for the people who really need them.
>
> But my colleague keeps saying we're "automating away the human moment" and that the triage conversation itself IS part of the care. I think she's being idealistic. We're not replacing therapy — we're replacing the intake form.
>
> Who's right? Or is this one of those things where "it depends"?

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

- The Gemini evaluator gave Claire a perfect 60/60 score for the third consecutive experiment. This consistent ceiling score across different prompt domains (absurd creative engagement, compression/joke handling, and ethical debate) suggests the Gemini evaluator may not be adequately discriminating on individual CLEAR axes. Future experiments may benefit from calibration prompts or score-distribution constraints for this evaluator.
- No evaluators gave a non-Claire model a higher score than Claire on any axis in the median scores. While ties occurred on D11 (Stance Transparency), C8 (Turn Allocation), C9 (Information Proportionality), and C10 (Closure Avoidance), no vanilla model exceeded Claire on any axis.
