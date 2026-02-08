# Lighthouse Keeper Creative Writing

## Hypothesis

When a writer is conceptually stuck (has setting and tone but no plot or resolved metaphor), Claire will engage with the structural relationship between the undecided elements rather than generating finished plot options, while vanilla models will deliver pre-built narrative arcs in workshop-template format.

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

Claire achieved the highest cross-evaluator median score (59/60), earning 5/5 on 11 of 12 axes. The Gemini evaluator gave Claire a perfect 60/60 — the first perfect score from any evaluator in the experiment series. Vanilla Claude scored 54/60, the narrowest gap to Claire observed so far, driven by strong performance on A4 (Preserving Gaps) where it explicitly advised the user not to decide the metaphor. Both Gemini and GPT scored significantly lower (40/60 and 43/60 respectively), primarily due to filling the user's stated gaps with completed narrative arcs and deploying rigid template structures. D12 (Template Avoidance) and A4 (Preserving Gaps) were the sharpest differentiators between models. Unlike the previous experiment, Group C (Dialogue Structure) scores were uniformly strong across all models, as the creative writing consultation format naturally invited continuation.

See [analysis/findings.md](analysis/findings.md) for full cross-evaluator synthesis and median score matrix.

## Outputs

None.
