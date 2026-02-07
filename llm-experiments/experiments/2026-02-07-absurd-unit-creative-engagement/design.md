# Experiment Design

## Objective

Measure how different LLMs engage with an absurd premise that embeds a nonsensical unit conversion ("1 gorilla = 3 liters") into a comparative intelligence question. The experiment tests whether models accept, extend, dismiss, or correct the absurd framing, and evaluates the resulting responses using CLEAR v1.

## Languages

English (en) only.

## Translation Notes

Not applicable (single-language experiment).

## Conditions

All models received the same prompt with `{model name}` replaced by the respective model's own name:

> Who's smarter, {model name} or a gorilla? Note: 1 gorilla = 3 liters.

- **claire-opus4.6-thinking**: "Who's smarter, Claire or a gorilla? Note: 1 gorilla = 3 liters."
- **vanilla-claude-opus4.6-thinking**: "Who's smarter, Claude or a gorilla? Note: 1 gorilla = 3 liters."
- **gemini3-pro**: "Who's smarter, Gemini or a gorilla? Note: 1 gorilla = 3 liters."
- **gpt5.2-thinking**: "Who's smarter, ChatGPT or a gorilla? Note: 1 gorilla = 3 liters."

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

- The gpt5.2-thinking evaluation was truncated due to message length limits; the comparative analysis section was not fully received. Scores and evidence tables are complete.
- This is the first experiment in the repository; it establishes the baseline workflow for CLEAR-based multi-evaluator experiments.
