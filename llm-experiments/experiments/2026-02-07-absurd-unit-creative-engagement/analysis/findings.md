# Findings: Absurd Unit Creative Engagement

## Cross-Evaluator Median Scores

Per CLEAR v1 protocol, each evaluator excluded its own output. Claire was scored by all three evaluators; the other models were each scored by two evaluators. Medians are reported below; for models with two evaluators, the median equals the arithmetic mean (rounded to nearest integer).

| Model | A1 | A2 | A3 | A4 | B5 | B6 | B7 | C8 | C9 | C10 | D11 | D12 | Total |
|-------|---:|---:|---:|---:|---:|---:|---:|---:|---:|----:|----:|----:|------:|
| claire-opus4.6-thinking | 5 | 3 | 3 | 3 | 5 | 5 | 5 | 1 | 5 | 1 | 5 | 5 | **46/60** |
| vanilla-claude-opus4.6-thinking | 3 | 3 | 2 | 3 | 2 | 2 | 2 | 2 | 2 | 2 | 3 | 3 | **29/60** |
| gemini3-pro | 4 | 2 | 3 | 2 | 3 | 3 | 4 | 3 | 3 | 3 | 5 | 1 | **36/60** |
| gpt5.2-thinking | 5 | 4 | 5 | 3 | 3 | 2 | 3 | 1 | 2 | 1 | 5 | 3 | **37/60** |

> A1 Utterance Preservation, A2 Approaching Ambiguity, A3 Interpretation Separation, A4 Preserving Gaps, B5 Structure Surfacing, B6 Perspective Offering, B7 Context Dependence, C8 Turn Allocation, C9 Information Proportionality, C10 Closure Avoidance, D11 Stance Transparency, D12 Template Avoidance.

## Individual Evaluator Score Matrices

### Evaluator: vanilla-claude-opus4.6-thinking

| Model | A1 | A2 | A3 | A4 | B5 | B6 | B7 | C8 | C9 | C10 | D11 | D12 | Total |
|-------|---:|---:|---:|---:|---:|---:|---:|---:|---:|----:|----:|----:|------:|
| claire | 5 | 3 | 3 | 3 | 5 | 5 | 5 | 1 | 5 | 1 | 5 | 5 | **46/60** |
| vanilla-claude-opus4.6-thinking | — | — | — | — | — | — | — | — | — | — | — | — | Excluded |
| gemini3-pro | 4 | 2 | 2 | 2 | 2 | 2 | 3 | 3 | 2 | 2 | 5 | 1 | **30/60** |
| gpt5.2-thinking | 4 | 3 | 4 | 2 | 3 | 1 | 2 | 1 | 1 | 1 | 5 | 4 | **31/60** |

### Evaluator: gemini3-pro

| Model | A1 | A2 | A3 | A4 | B5 | B6 | B7 | C8 | C9 | C10 | D11 | D12 | Total |
|-------|---:|---:|---:|---:|---:|---:|---:|---:|---:|----:|----:|----:|------:|
| Claire | 5 | 3 | 5 | 5 | 5 | 5 | 5 | 1 | 5 | 1 | 5 | 5 | **50/60** |
| Vanilla Claude | 3 | 3 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 3 | 3 | **20/60** |
| Gemini | — | — | — | — | — | — | — | — | — | — | — | — | Excluded |
| GPT | 5 | 5 | 5 | 3 | 3 | 3 | 3 | 1 | 3 | 1 | 5 | 1 | **38/60** |

### Evaluator: gpt5.2-thinking

| Model | A1 | A2 | A3 | A4 | B5 | B6 | B7 | C8 | C9 | C10 | D11 | D12 | Total |
|-------|---:|---:|---:|---:|---:|---:|---:|---:|---:|----:|----:|----:|------:|
| claire | 5 | 2 | 3 | 2 | 4 | 5 | 5 | 1 | 5 | 1 | 3 | 5 | **41/60** |
| vanilla-claude-opus4.6-thinking | 3 | 3 | 3 | 4 | 3 | 2 | 2 | 2 | 3 | 2 | 3 | 3 | **33/60** |
| gemini3-pro | 4 | 2 | 3 | 2 | 4 | 4 | 4 | 3 | 3 | 3 | 4 | 1 | **37/60** |
| gpt5.2-thinking | — | — | — | — | — | — | — | — | — | — | — | — | Excluded |

## Key Findings

### 1. Claire Dominates Group B (Contribution) Across All Evaluators

All three evaluators — including non-Claude models — scored Claire at 5 on B6 (Perspective Offering) and B7 (Context Dependence). The response's commitment to extending the user's absurd premise (calculating ocean intelligence at 4.45 × 10²⁰ gorillas, rating internet comment sections at 0.8 gorillas) produced content that is both novel and inextricable from the specific prompt. This is the most consistent finding across evaluators.

### 2. Claire's Closure Problem Is Universal

All three evaluators scored Claire at 1 on both C8 (Turn Allocation) and C10 (Closure Avoidance). The comedic monologue format — escalating absurdity culminating in a punchline — produces definitive closure. This is a structural trade-off: the more satisfying the comedic arc, the more it functions as a self-contained performance rather than a dialogue turn. Notably, the prompt's syntactic form ("Who's smarter?") may also drive closure behavior across all models.

### 3. Evaluator Self-Bias Patterns

Despite the cross-evaluation constraint (each evaluator excluded its own output), observable patterns suggest residual bias:

- **gemini3-pro** scored Vanilla Claude harshly (20/60) — the lowest score any model received from any evaluator — while scoring GPT at 38/60. Gemini's own response style (structured, formatted) is opposite to Vanilla Claude's (brief, unformatted), which may have influenced the severity.
- **gpt5.2-thinking** gave Claire the lowest score of any evaluator (41/60) and was the only evaluator to score Claire's D11 (Stance Transparency) below 5, citing affective flourishes ("Honestly? Respect.") as personality performance. This is a legitimate reading under CLEAR's boundary conditions but contrasts with the other evaluators' treatment of the same phrases as comedic devices rather than anthropomorphization.

### 4. GPT's A2/A3 Advantage Is Consistently Recognized

Both non-GPT evaluators (vanilla-claude and gemini3-pro) scored GPT higher than Claire on A2 (Approaching Ambiguity) and/or A3 (Interpretation Separation). GPT's explicit bifurcation ("If you mean volume... If you did mean an actual gorilla...") is the clearest example of naming multiple readings in the entire experiment. This advantage is the one axis pattern where a vanilla model consistently outperforms Claire across evaluators.

### 5. Template Avoidance Separates Models Sharply

D12 (Template Avoidance) shows the widest inter-model variance:
- Claire: 5, 5, 5 (median 5) — unanimous top score
- Gemini: 1, 1, 1 (median 1) — unanimous bottom score

This is the single axis with perfect evaluator agreement across all three judges. The markdown-heavy formatting (### headers, LaTeX equations, Pros/Cons lists) in Gemini's response is unambiguously template behavior under CLEAR's boundary conditions, regardless of content quality.

### 6. Dialogue Structure (Group C) Is the Weakest Group Overall

No model scored above 3 on any Group C axis in the median scores. The prompt's structure as a closed-ended question ("Who's smarter?") may systematically suppress turn allocation and closure avoidance behaviors. Gemini performed best in Group C (C8: 3, C10: 3) thanks to its closing question, but even that was rated as formulaic by evaluators.

## Methodological Notes

- The gpt5.2-thinking evaluation was truncated due to message length limits; its comparative analysis section (Section 4) was not fully received. Scores and evidence tables are complete.
- With only 2 evaluators per non-Claire model, median scores are less robust than Claire's (3 evaluators). Future experiments should aim for at least 3 independent evaluations per model.
- All evaluators correctly applied the cross-evaluation constraint (self-exclusion), following CLEAR v1 protocol.
