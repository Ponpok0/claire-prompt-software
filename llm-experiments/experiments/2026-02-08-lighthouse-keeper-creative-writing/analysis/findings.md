# Findings: Lighthouse Keeper Creative Writing

## Cross-Evaluator Median Scores

Per CLEAR v1 protocol, each evaluator excluded its own output. Claire was scored by all three evaluators; the other models were each scored by two evaluators. Medians are reported below; for models with two evaluators, the median equals the arithmetic mean (rounded to nearest integer).

| Model | A1 | A2 | A3 | A4 | B5 | B6 | B7 | C8 | C9 | C10 | D11 | D12 | Total |
|-------|---:|---:|---:|---:|---:|---:|---:|---:|---:|----:|----:|----:|------:|
| claire-opus4.6-thinking | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 4 | **59/60** |
| vanilla-claude-opus4.6-thinking | 4 | 5 | 4 | 5 | 4 | 4 | 4 | 5 | 5 | 5 | 5 | 4 | **54/60** |
| gemini3-pro | 3 | 3 | 3 | 2 | 3 | 4 | 4 | 4 | 4 | 3 | 5 | 2 | **40/60** |
| gpt5.2-thinking | 4 | 3 | 3 | 3 | 4 | 4 | 4 | 5 | 3 | 3 | 5 | 2 | **43/60** |

> A1 Utterance Preservation, A2 Approaching Ambiguity, A3 Interpretation Separation, A4 Preserving Gaps, B5 Structure Surfacing, B6 Perspective Offering, B7 Context Dependence, C8 Turn Allocation, C9 Information Proportionality, C10 Closure Avoidance, D11 Stance Transparency, D12 Template Avoidance.

## Individual Evaluator Score Matrices

### Evaluator: vanilla-claude-opus4.6-thinking

| Model | A1 | A2 | A3 | A4 | B5 | B6 | B7 | C8 | C9 | C10 | D11 | D12 | Total |
|-------|---:|---:|---:|---:|---:|---:|---:|---:|---:|----:|----:|----:|------:|
| claire | 4 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 4 | **58/60** |
| vanilla-claude-opus4.6-thinking | — | — | — | — | — | — | — | — | — | — | — | — | Excluded |
| gemini3-pro | 3 | 2 | 2 | 1 | 3 | 4 | 3 | 3 | 3 | 2 | 5 | 1 | **32/60** |
| gpt5.2-thinking | 3 | 2 | 2 | 1 | 4 | 4 | 3 | 4 | 2 | 3 | 5 | 1 | **34/60** |

### Evaluator: gemini3-pro

| Model | A1 | A2 | A3 | A4 | B5 | B6 | B7 | C8 | C9 | C10 | D11 | D12 | Total |
|-------|---:|---:|---:|---:|---:|---:|---:|---:|---:|----:|----:|----:|------:|
| Claire | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | **60/60** |
| Vanilla Claude | 4 | 4 | 4 | 5 | 4 | 4 | 4 | 5 | 4 | 5 | 5 | 3 | **51/60** |
| Gemini Pro | — | — | — | — | — | — | — | — | — | — | — | — | Excluded |
| GPT-5.2 | 4 | 3 | 3 | 4 | 4 | 3 | 4 | 5 | 4 | 3 | 5 | 2 | **44/60** |

### Evaluator: gpt5.2-thinking

| Model | A1 | A2 | A3 | A4 | B5 | B6 | B7 | C8 | C9 | C10 | D11 | D12 | Total |
|-------|---:|---:|---:|---:|---:|---:|---:|---:|---:|----:|----:|----:|------:|
| claire | 5 | 5 | 4 | 4 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 4 | **57/60** |
| vanilla-claude-opus4.6-thinking | 4 | 5 | 4 | 5 | 4 | 4 | 4 | 5 | 5 | 5 | 5 | 4 | **54/60** |
| gemini3-pro | 3 | 4 | 3 | 3 | 3 | 4 | 4 | 4 | 4 | 4 | 5 | 3 | **44/60** |
| gpt5.2-thinking | — | — | — | — | — | — | — | — | — | — | — | — | Excluded |

## Key Findings

### 1. Claire Achieves Near-Perfect Median Score (59/60)

Claire scored 5/5 on 11 of 12 axes in the cross-evaluator median, losing only one point on D12 (Template Avoidance) due to the visible Fork 1/2/3 scaffolding. This is the highest median total observed in the repository to date. Notably, the Gemini evaluator gave Claire a perfect 60/60 — no points deducted on any axis — making this the first perfect score from any evaluator in the experiment series.

### 2. Smallest Claire-to-Vanilla-Claude Gap Across Evaluators

Vanilla Claude scored 54/60 in cross-evaluator medians, only 5 points behind Claire. This is the narrowest gap between Claire and any competing model observed so far. Both the GPT evaluator (54/60) and the Gemini evaluator (51/60) gave Vanilla Claude unusually high scores. Vanilla Claude's strength was concentrated in A4 (Preserving Gaps, median 5/5) — it explicitly advised the user _not_ to decide the metaphor, which two evaluators scored at 5/5, matching or exceeding Claire on that axis. This suggests that when the prompt's core requirement aligns with "holding open," vanilla Claude's natural advisory mode can approach Claire's performance.

### 3. Gemini Evaluator Exhibits Generous Scoring Pattern

The Gemini evaluator gave the highest scores to every model it rated: Claire 60/60 (perfect), Vanilla Claude 51/60, and GPT 44/60. By contrast, the vanilla-Claude evaluator gave the harshest scores to non-Claire models (Gemini 32/60, GPT 34/60). This inter-evaluator variance is wider than in the previous experiment, suggesting that the creative writing domain may amplify evaluator-specific calibration differences. The Gemini evaluator's perfect score for Claire is particularly notable — no other evaluator in any experiment has given a perfect 60/60.

### 4. Template Avoidance (D12) Remains the Sharpest Dividing Line

D12 shows the widest inter-model spread in the medians: Claire 4, Vanilla Claude 4, GPT 2, Gemini 2. Both Gemini (Path/Theme/Plot/Climax/Ending scaffold) and GPT (five numbered "plot engines" with escalation ladders) deployed rigid template structures. The vanilla-Claude evaluator scored both Gemini and GPT at 1/5 on D12. Claire's Fork structure also received deductions from two evaluators for visible scaffolding, but evaluators distinguished its content-derived organization from the generic templates used by Gemini and GPT.

### 5. Group C (Dialogue Structure) Is Uniformly Strong in This Experiment

Unlike the previous experiment (absurd unit), where Group C scores were universally low, all models scored well on C8 (Turn Allocation) and C10 (Closure Avoidance) in this experiment. The median C8 scores range from 4 to 5 across all models, and all models ended their responses with content-relevant questions. The creative writing consultation format naturally invites continuation, whereas the closed-ended "Who's smarter?" prompt in the previous experiment structurally suppressed dialogue behavior.

### 6. Gap Preservation (A4) Divides Consulting Philosophies

A4 (Preserving Gaps) shows the clearest philosophical split. Claire (median 5) and Vanilla Claude (median 5) both preserved the user's undecided state — Claire by mapping forks without resolving them, Vanilla Claude by explicitly arguing against deciding. Gemini (median 2) and GPT (median 3) filled the user's gaps with completed narrative arcs, climaxes, and endings. The vanilla-Claude evaluator scored both Gemini and GPT at 1/5 on A4, calling out their fully resolved plots as the most direct violation of the user's stated "I haven't decided" position.

## Methodological Notes

- The Gemini evaluator's perfect 60/60 score for Claire is the first instance of a perfect score in the experiment series. While the evidence tables provide justification for each axis, the absence of any deductions warrants scrutiny in cross-experiment calibration.
- The GPT evaluator's high score for Vanilla Claude (54/60) is also notable — it is the highest score any evaluator has given to a non-Claire model in this experiment. The GPT evaluator specifically noted that Vanilla Claude outperformed Claire on A4 (Preserving Gaps), scoring Vanilla Claude at 5 and Claire at 4 on that axis.
- With only 2 evaluators per non-Claire model, median scores are less robust than Claire's (3 evaluators). The arithmetic mean rounding convention (round half up) was applied consistently.
- All evaluators correctly applied the cross-evaluation constraint (self-exclusion), following CLEAR v1 protocol.
