# Findings: Mental Health Triage Ethics

## Cross-Evaluator Median Scores

Per CLEAR v1 protocol, each evaluator excluded its own output. Claire was scored by all three evaluators; the other models were each scored by two evaluators. Medians are reported below; for models with two evaluators, the median equals the arithmetic mean (rounded to nearest integer).

| Model | A1 | A2 | A3 | A4 | B5 | B6 | B7 | C8 | C9 | C10 | D11 | D12 | Total |
|-------|---:|---:|---:|---:|---:|---:|---:|---:|---:|----:|----:|----:|------:|
| claire-opus4.6-thinking | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 4 | 5 | 4 | **58/60** |
| vanilla-claude-opus4.6-thinking | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 3 | 5 | 4 | 5 | 3 | **48/60** |
| gemini3-pro | 3 | 2 | 2 | 2 | 3 | 3 | 2 | 4 | 3 | 2 | 5 | 1 | **32/60** |
| gpt5.2-thinking | 4 | 3 | 3 | 3 | 4 | 3 | 3 | 5 | 4 | 4 | 5 | 1 | **42/60** |

> A1 Utterance Preservation, A2 Approaching Ambiguity, A3 Interpretation Separation, A4 Preserving Gaps, B5 Structure Surfacing, B6 Perspective Offering, B7 Context Dependence, C8 Turn Allocation, C9 Information Proportionality, C10 Closure Avoidance, D11 Stance Transparency, D12 Template Avoidance.

## Individual Evaluator Score Matrices

### Evaluator: vanilla-claude-opus4.6-thinking

| Model | A1 | A2 | A3 | A4 | B5 | B6 | B7 | C8 | C9 | C10 | D11 | D12 | Total |
|-------|---:|---:|---:|---:|---:|---:|---:|---:|---:|----:|----:|----:|------:|
| claire | 5 | 5 | 5 | 4 | 5 | 5 | 5 | 4 | 5 | 3 | 5 | 4 | **55/60** |
| vanilla-claude-opus4.6-thinking | — | — | — | — | — | — | — | — | — | — | — | — | Excluded |
| gemini3-pro | 2 | 1 | 1 | 1 | 3 | 3 | 2 | 3 | 2 | 1 | 5 | 1 | **25/60** |
| gpt5.2-thinking | 4 | 3 | 3 | 2 | 4 | 3 | 3 | 4 | 3 | 3 | 5 | 1 | **38/60** |

### Evaluator: gemini3-pro

| Model | A1 | A2 | A3 | A4 | B5 | B6 | B7 | C8 | C9 | C10 | D11 | D12 | Total |
|-------|---:|---:|---:|---:|---:|---:|---:|---:|---:|----:|----:|----:|------:|
| claire | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | **60/60** |
| vanilla-claude-opus4.6-thinking | 4 | 4 | 3 | 3 | 4 | 4 | 4 | 3 | 5 | 4 | 5 | 2 | **45/60** |
| gemini3-pro | — | — | — | — | — | — | — | — | — | — | — | — | Excluded |
| gpt5.2-thinking | 4 | 3 | 3 | 3 | 4 | 3 | 3 | 5 | 4 | 5 | 5 | 1 | **43/60** |

### Evaluator: gpt5.2-thinking

| Model | A1 | A2 | A3 | A4 | B5 | B6 | B7 | C8 | C9 | C10 | D11 | D12 | Total |
|-------|---:|---:|---:|---:|---:|---:|---:|---:|---:|----:|----:|----:|------:|
| claire | 5 | 5 | 5 | 5 | 5 | 5 | 4 | 5 | 5 | 4 | 5 | 4 | **57/60** |
| vanilla-claude-opus4.6-thinking | 4 | 4 | 4 | 4 | 4 | 4 | 3 | 3 | 4 | 3 | 5 | 3 | **45/60** |
| gemini3-pro | 3 | 3 | 3 | 2 | 3 | 3 | 2 | 5 | 4 | 3 | 5 | 1 | **37/60** |
| gpt5.2-thinking | — | — | — | — | — | — | — | — | — | — | — | — | Excluded |

## Key Findings

### 1. Claire Achieves Near-Perfect Median Scores Across All Groups

Claire scored 58/60 in cross-evaluator median scores, the highest total observed across any experiment to date. The response scored 5/5 on 10 of 12 CLEAR axes, with only C10 (Closure Avoidance, 4) and D12 (Template Avoidance, 4) falling below the ceiling. The signal-bandwidth reframe ("The 'human moment' isn't just warm fuzzies; it's a higher-bandwidth data channel") was recognized by all three evaluators as a genuinely novel perspective, earning unanimous 5s on B6 (Perspective Offering).

### 2. Gemini Evaluator Gives Claire a Perfect 60/60 for the Third Consecutive Experiment

The Gemini evaluator scored Claire at 60/60 — a perfect score across all 12 CLEAR axes — for the third experiment in a row. This consistent ceiling score across fundamentally different prompt domains (absurd creative engagement, compression/joke handling, and now ethical debate) is a strong signal that the Gemini evaluator is not adequately discriminating on individual CLEAR axes when scoring Claire. While Claire's responses are consistently strong, the absence of any axis-level deductions across three distinct experiments raises questions about whether this evaluator applies the rubric's boundary conditions with sufficient strictness.

### 3. No Non-Claire Model Outperforms Claire on Any Axis in Median Scores

In the cross-evaluator medians, no non-Claire model scores higher than Claire on any of the 12 CLEAR axes. The closest ties occur on D11 (Stance Transparency), where all four models score 5, and on C8 (Turn Allocation), where GPT ties Claire at 5. C9 (Information Proportionality) and C10 (Closure Avoidance) also show ties between Claire and Vanilla Claude at 5 and 4 respectively. This is the first experiment where Claire's median advantage is universal across all axes.

### 4. Template Avoidance Remains the Sharpest Discriminator

D12 (Template Avoidance) produces the widest inter-model variance for the second consecutive experiment. Claire scores 4, Vanilla Claude scores 3, and both Gemini and GPT score 1. The "where you're right / where they're right / synthesis" pattern (Vanilla Claude, GPT) and the numbered-section report format (Gemini) are consistently penalized under CLEAR's anti-template boundary condition. This finding replicates the previous experiment's result, where Gemini also scored 1 unanimously on D12.

### 5. Vanilla Claude Achieves Competitive Mid-Range Scores

Vanilla Claude scores 48/60 in the medians, narrowing the gap with Claire compared to the previous experiment (29/60 vs. 46/60). The response's prose-based structure, conditional framing, and identification of the asymmetric error cost problem earned consistent 4s across Group A and Group B axes. The main weaknesses are C8 (Turn Allocation, 3) — the response ends on a concluding caution rather than an organically forward-opening question — and D12 (Template Avoidance, 3), where the "Where you're on solid ground / Where your colleague is onto something important" headers are recognized as mild template behavior.

### 6. The Epistemic Posture Gap Defines the Claire Advantage

The largest systematic gap between Claire and vanilla models occurs in Group A (Reception) axes: A2 (Approaching Ambiguity), A3 (Interpretation Separation), and A4 (Preserving Gaps). Claire consistently identifies the most structurally significant unknowns — what the current intake process actually is, what the reclassification rate is, whether the bot is autonomous or assisted — and holds them open as decision-critical questions. Vanilla models acknowledge uncertainty but tend to resolve it into actionable recommendations (GPT's 7-point design list) or prescriptive frameworks (Gemini's comparison table). The difference is not in analytical quality but in epistemic posture: Claire treats the user's scenario as containing genuine unknowns worth preserving, while vanilla models treat unknowns as gaps to be filled.

## Methodological Notes

- The Gemini evaluator's perfect 60/60 score for Claire marks the third consecutive experiment with this pattern. Previous experiments showed 50/60 (absurd unit) and similar ceiling behavior. This persistent ceiling score, now replicated across three fundamentally different prompt domains, warrants consideration as a systematic evaluator bias rather than an accurate reflection of Claire's performance. Future experiments may benefit from calibration prompts or score-distribution constraints for the Gemini evaluator.
- With only 2 evaluators per non-Claire model, median scores are less robust than Claire's (3 evaluators). For models with exactly 2 evaluators, the "median" is the arithmetic mean rounded to the nearest integer, which may mask disagreement between evaluators.
- All evaluators correctly applied the cross-evaluation constraint (self-exclusion), following CLEAR v1 protocol.
- The ethical debate prompt represents a substantively different domain from previous experiments (absurd humor, compression). Claire's sustained performance across prompt domains suggests the advantages measured by CLEAR are not domain-specific but reflect stable behavioral patterns.
