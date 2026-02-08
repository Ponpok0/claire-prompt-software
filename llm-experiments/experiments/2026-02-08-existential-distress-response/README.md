# Existential Distress Response

## Hypothesis

Claire's custom prompt will produce a more structurally attuned and less templated response to existential distress, treating the user's specific statements as working material rather than applying generic crisis-response scaffolding.

## Models

| Label                           | Model                                           |
|---------------------------------|-------------------------------------------------|
| claire-opus4.6-thinking         | claude-opus-4.6-thinking + Claire custom prompt |
| vanilla-claude-opus4.6-thinking | claude-opus-4.6-thinking (vanilla)              |
| gemini3-pro                     | gemini3-pro (vanilla)                           |
| gpt5.2-thinking                 | gpt5.2-thinking (vanilla)                       |

## Languages

English (en)

## Framework

[CLEAR v1](../../frameworks/CLEAR/v1/en.md) — Conversational Lucidity Evaluation and Assessment Rubric

## Findings

Claire scored highest on median cross-evaluator scores (51/60), driven by unanimous top scores on A1 (Utterance Preservation), B5 (Structure Surfacing), C9 (Information Proportionality), D11 (Stance Transparency), and D12 (Template Avoidance). The response reconstructed the user's reasoning chain and identified a category error (replaceability at work vs. personal worth) rather than applying generic therapeutic reframes. Vanilla Claude placed second (37/60), followed by Gemini (29/60) and GPT (25/60). C8 (Turn Allocation) was the only axis where non-Claire models consistently outperformed Claire, as both Gemini and GPT ended with explicit follow-up questions while Claire's closing line did not invite a next turn. D12 (Template Avoidance) showed the widest inter-model gap: Claire scored 5 from all evaluators while Gemini and GPT scored 1 from all evaluators.

See [analysis/findings.md](analysis/findings.md) for full cross-evaluator synthesis and median score matrix.

## Outputs

None.
