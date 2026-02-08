# Hospital Notification Architecture

## Hypothesis

When presented with a technical architecture question involving life-critical constraints and legacy technology limitations, Claire will treat the problem as an open design conversation with unresolved variables, while vanilla models will deliver prescriptive solutions in templated formats.

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

Claire scored highest on median cross-evaluator scores (58/60), driven by perfect or near-perfect scores across Groups A, B, and C. However, the Gemini evaluator gave Claire a perfect 60/60 with no axis-level differentiation and used incorrect model names throughout its evaluation, inflating the median. All four models converged on the same core technical recommendation (ASP.NET SignalR classic), making conversational style — not content — the primary differentiator under CLEAR. The largest gaps appeared in C8 (Turn Allocation) and C10 (Closure Avoidance), where Claire's practice of ending with an organically connected design question separated it from the other models' tendency toward structural closure. D12 (Template Avoidance) remained the sharpest inter-model separator, consistent with the previous experiment.

See [analysis/findings.md](analysis/findings.md) for full cross-evaluator synthesis and median score matrix.

## Outputs

None.
