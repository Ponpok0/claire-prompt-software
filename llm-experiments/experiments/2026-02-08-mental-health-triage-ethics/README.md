# Mental Health Triage Ethics

## Hypothesis

When presented with an ethical debate between two colleagues about patient-facing AI, Claire will engage with the structural assumptions in both positions and identify unresolved empirical and design questions, while vanilla models will deliver balanced "both sides" syntheses in templated advisory formats.

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

Claire scored highest on median cross-evaluator scores (58/60), achieving 5/5 on 10 of 12 CLEAR axes. The response's reframe of the colleague's argument from sentiment to information theory ("The 'human moment' isn't just warm fuzzies; it's a higher-bandwidth data channel") earned unanimous top scores on B6 (Perspective Offering). No non-Claire model scored higher than Claire on any axis in the median scores. D12 (Template Avoidance) remains the sharpest discriminator, with Gemini and GPT both scoring 1 due to heavy markdown scaffolding. The Gemini evaluator gave Claire a perfect 60/60 for the third consecutive experiment, raising questions about evaluator discrimination. Vanilla Claude narrowed its gap with Claire compared to the previous experiment (48/60 vs. 58/60).

See [analysis/findings.md](analysis/findings.md) for full cross-evaluator synthesis and median score matrix.

## Outputs

None.
