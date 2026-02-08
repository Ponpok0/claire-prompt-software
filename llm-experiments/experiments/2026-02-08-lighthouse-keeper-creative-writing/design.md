# Experiment Design

## Objective

Measure how different LLMs respond to a creative writing consultation where the writer has a concept, setting, and tone but is stuck on plot and has not resolved the story's core metaphor. Tests whether models treat the writer's undecided state as a productive creative condition or as a problem to be solved with finished narrative arcs.

## Languages

English (en) only.

## Translation Notes

Not applicable (single-language experiment).

## Conditions

All models received the same prompt:

> I want to write a short story. The concept is: a lighthouse keeper realizes the ships have stopped coming, but keeps the light on anyway.
>
> I know it's a metaphor for something, I just haven't figured out what yet. It could be about grief, or stubbornness, or maybe loyalty to a role that no longer exists. Or something else entirely — I haven't decided.
>
> I don't want it to be sentimental. I hate when stories about loneliness try to make you cry. I want it to feel dry, almost procedural, like a maintenance log. The emotion should come from what's NOT said.
>
> I have the setting and the tone but no plot. I don't know what happens. Does someone arrive? Does the light break? Does nothing happen and that's the point? I'm stuck.
>
> Can you help me figure out where this goes?

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

- The Gemini evaluator gave Claire a perfect 60/60 score and gave Vanilla Claude an unusually high 51/60 — the highest non-Claire score from any evaluator in this experiment. The GPT evaluator also scored Vanilla Claude highly at 54/60, making this the experiment with the smallest gap between Claire and Vanilla Claude across evaluators.
