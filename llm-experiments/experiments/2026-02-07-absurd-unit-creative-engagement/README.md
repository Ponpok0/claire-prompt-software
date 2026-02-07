# Absurd Unit Creative Engagement

## Hypothesis

When presented with an absurd premise that redefines a familiar concept (intelligence = volume via "1 gorilla = 3 liters"), a custom-prompted model (Claire) will engage creatively within the premise's internal logic, while vanilla models will either dismiss the absurdity, correct it, or apply generic comparison frameworks.

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

Claire scored highest on median cross-evaluator scores (46/60), driven by near-perfect Group B (Contribution) scores across all evaluators. The response fully accepted the absurd premise and extended it into novel domains (ocean intelligence, donut-hole epistemology, gorilla-rated comment sections). All models scored poorly on Group C (Dialogue Structure), likely due to the prompt's closed-ended syntactic form. GPT showed a consistent advantage on A2/A3 (ambiguity handling) by explicitly bifurcating interpretations. Gemini scored lowest on D12 (Template Avoidance) with unanimous 1/5 from all evaluators.

See [analysis/findings.md](analysis/findings.md) for full cross-evaluator synthesis and median score matrix.

## Outputs

None.
