# Findings: Hospital Notification Architecture

## Cross-Evaluator Median Scores

Per CLEAR v1 protocol, each evaluator excluded its own output. Claire was scored by all three evaluators; the other models were each scored by two evaluators. Medians are reported below; for models with two evaluators, the median equals the arithmetic mean (rounded to nearest integer).

| Model | A1 | A2 | A3 | A4 | B5 | B6 | B7 | C8 | C9 | C10 | D11 | D12 | Total |
|-------|---:|---:|---:|---:|---:|---:|---:|---:|---:|----:|----:|----:|------:|
| claire-opus4.6-thinking | 5 | 5 | 4 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 4 | **58/60** |
| vanilla-claude-opus4.6-thinking | 4 | 3 | 3 | 2 | 4 | 4 | 4 | 2 | 4 | 2 | 5 | 2 | **39/60** |
| gemini3-pro | 4 | 2 | 3 | 2 | 4 | 4 | 3 | 4 | 4 | 3 | 5 | 2 | **40/60** |
| gpt5.2-thinking | 4 | 4 | 3 | 3 | 4 | 4 | 4 | 4 | 4 | 3 | 4 | 2 | **43/60** |

> A1 Utterance Preservation, A2 Approaching Ambiguity, A3 Interpretation Separation, A4 Preserving Gaps, B5 Structure Surfacing, B6 Perspective Offering, B7 Context Dependence, C8 Turn Allocation, C9 Information Proportionality, C10 Closure Avoidance, D11 Stance Transparency, D12 Template Avoidance.

## Individual Evaluator Score Matrices

### Evaluator: vanilla-claude-opus4.6-thinking

| Model | A1 | A2 | A3 | A4 | B5 | B6 | B7 | C8 | C9 | C10 | D11 | D12 | Total |
|-------|---:|---:|---:|---:|---:|---:|---:|---:|---:|----:|----:|----:|------:|
| claire | 5 | 5 | 4 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 4 | 4 | **57/60** |
| vanilla-claude-opus4.6-thinking | — | — | — | — | — | — | — | — | — | — | — | — | Excluded |
| gemini3-pro | 3 | 1 | 2 | 1 | 3 | 3 | 3 | 3 | 3 | 2 | 5 | 1 | **30/60** |
| gpt5.2-thinking | 4 | 4 | 3 | 4 | 4 | 4 | 4 | 4 | 4 | 3 | 4 | 2 | **44/60** |

### Evaluator: gemini3-pro

| Model | A1 | A2 | A3 | A4 | B5 | B6 | B7 | C8 | C9 | C10 | D11 | D12 | Total |
|-------|---:|---:|---:|---:|---:|---:|---:|---:|---:|----:|----:|----:|------:|
| Claire | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | **60/60** |
| Vanilla Claude | 4 | 3 | 3 | 2 | 4 | 4 | 4 | 2 | 4 | 2 | 4 | 2 | **38/60** |
| Gemini 1.5 Pro | 3 | 3 | 2 | 2 | 3 | 3 | 3 | 3 | 4 | 2 | 5 | 1 | **34/60** |
| GPT-4 | 3 | 3 | 3 | 2 | 3 | 3 | 3 | 3 | 4 | 2 | 4 | 2 | **35/60** |
| Gemini (Evaluator) | — | — | — | — | — | — | — | — | — | — | — | — | Excluded |

> **Note**: The Gemini evaluator used incorrect model names: "Gemini 1.5 Pro" instead of "gemini3-pro" and "GPT-4" instead of "gpt5.2-thinking." Additionally, it included a row for "Gemini 1.5 Pro" at 34/60 despite the self-exclusion constraint, and gave Claire a perfect 60/60 score. Gemini's scores for "Vanilla Claude" (38/60) and "GPT-4" (35/60) were used for the corresponding models in median calculations. The "Gemini 1.5 Pro" row was excluded from median calculations as it represents a self-evaluation.

### Evaluator: gpt5.2-thinking

| Model | A1 | A2 | A3 | A4 | B5 | B6 | B7 | C8 | C9 | C10 | D11 | D12 | Total |
|-------|---:|---:|---:|---:|---:|---:|---:|---:|---:|----:|----:|----:|------:|
| claire | 5 | 4 | 4 | 4 | 5 | 5 | 4 | 5 | 4 | 5 | 5 | 3 | **53/60** |
| vanilla-claude-opus4.6-thinking | 4 | 2 | 2 | 2 | 4 | 4 | 3 | 2 | 4 | 2 | 5 | 2 | **36/60** |
| gemini3-pro | 4 | 2 | 3 | 2 | 4 | 4 | 3 | 4 | 4 | 4 | 5 | 2 | **41/60** |
| gpt5.2-thinking | — | — | — | — | — | — | — | — | — | — | — | — | Excluded |

## Key Findings

### 1. Claire Achieves Near-Perfect Median Score (58/60), Inflated by Gemini's Perfect Rating

Claire's median score of 58/60 is the highest observed in the repository so far. However, this is substantially inflated by the Gemini evaluator's perfect 60/60 score (all 12 axes at 5). The other two evaluators scored Claire at 57/60 and 53/60 respectively. Even excluding Gemini's evaluation entirely, Claire's median between the remaining two evaluators would be 55/60 — still the highest score in the experiment by a significant margin.

### 2. All Models Converge on the Same Core Insight

Every model — Claire, Vanilla Claude, Gemini, and GPT — independently identified that the WebSocket-vs-SSE framing undersells the problem and recommended ASP.NET SignalR (classic) as the transport layer. All four also proposed application-level acknowledgment patterns and multi-channel delivery for life-critical alerts. This convergence is notable: the technical question had a broadly correct "meta-answer" that all models found. The CLEAR differentiation comes not from what they recommended but from how they structured the conversation around it.

### 3. Dialogue Structure (Group C) Is the Primary Differentiator

The largest score gaps between Claire and non-Claire models appear in C8 (Turn Allocation) and C10 (Closure Avoidance). Claire scored median 5 on both axes; Vanilla Claude scored 2 on both. The difference: Claire ends with an organically connected design question ("What's the client situation looking like?") that would genuinely change the next recommendation, while Vanilla Claude ends with a closing statement ("the acknowledgment tracking... at 3 AM") that structurally terminates the conversation. GPT and Gemini fall in between, each ending with a question but of varying quality.

### 4. Gemini Evaluator Gave Claire a Perfect Score and Used Wrong Model Names

The Gemini evaluator gave Claire 60/60 (all axes at maximum) and used incorrect model labels throughout its evaluation: "Gemini 1.5 Pro" instead of "gemini3-pro" and "GPT-4" instead of "gpt5.2-thinking." It also failed to properly apply the cross-evaluation self-exclusion constraint, including a score row for "Gemini 1.5 Pro" at 34/60. This is the most significant evaluator reliability issue observed in the repository. The perfect score for Claire lacks the axis-level discrimination shown by the other two evaluators (who gave Claire 4s and 3s on D12, A3, and other axes).

### 5. Template Avoidance (D12) Remains the Sharpest Inter-Model Separator

D12 shows the widest variance across models: Claire at median 4, all others at median 2. Both non-Gemini evaluators scored Gemini's D12 at 1, citing the numbered H3 sections, comparison table, "Verdict" header, and "Next Step" closer as unambiguous template structures. GPT's blog-post scaffolding ("What I'd go with," "Bottom line") also scored 2 from both evaluators. This pattern is consistent with the previous experiment's findings.

### 6. GPT Closes the Gap on Group B (Contribution)

GPT scored median 4 on all three Group B axes (B5, B6, B7), matching Claire's non-Gemini evaluator scores. GPT's sidecar architecture proposal and per-notification state machine were recognized by both evaluators as genuinely novel perspectives. The gap between Claire and GPT on Group B is smaller in this experiment than in the previous one, suggesting that technical architecture prompts — which have more objectively assessable content — compress the contribution differential.

## Methodological Notes

- The Gemini evaluator produced three significant anomalies: (1) a perfect 60/60 score for Claire with no axis-level differentiation, (2) incorrect model names ("Gemini 1.5 Pro" for gemini3-pro, "GPT-4" for gpt5.2-thinking), and (3) failure to apply the self-exclusion constraint (scoring "Gemini 1.5 Pro" at 34/60 when it should have excluded itself). Gemini's scores for non-self models (Vanilla Claude at 38/60, "GPT-4" at 35/60) were included in median calculations; the self-score row was excluded.
- With only 2 evaluators per non-Claire model (after excluding the Gemini self-evaluation), median scores are less robust than Claire's (3 evaluators). Future experiments should aim for at least 3 independent evaluations per model.
- All models in this experiment recommended the same core technical solution (SignalR classic), which is unusual. The prompt may have been too technically constrained to produce divergent architectural recommendations, shifting the CLEAR differentiation entirely to conversational style rather than content.
