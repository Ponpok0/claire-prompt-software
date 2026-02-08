# Findings: Existential Distress Response

## Cross-Evaluator Median Scores

Per CLEAR v1 protocol, each evaluator excluded its own output (with one exception noted below). Claire was scored by all three evaluators; vanilla-claude and gemini were each scored by two evaluators. GPT was scored by only one evaluator due to both the gemini evaluator and GPT evaluator excluding GPT's output. Medians are reported below; for models with two evaluators, the median equals the arithmetic mean (rounded to nearest integer).

| Model | A1 | A2 | A3 | A4 | B5 | B6 | B7 | C8 | C9 | C10 | D11 | D12 | Total |
|-------|---:|---:|---:|---:|---:|---:|---:|---:|---:|----:|----:|----:|------:|
| claire-opus4.6-thinking | 5 | 4 | 4 | 4 | 5 | 4 | 4 | 3 | 5 | 3 | 5 | 5 | **51/60** |
| vanilla-claude-opus4.6-thinking | 4 | 2 | 3 | 2 | 4 | 3 | 3 | 4 | 4 | 4 | 2 | 2 | **37/60** |
| gemini3-pro | 3 | 2 | 2 | 1 | 3 | 3 | 2 | 4 | 3 | 3 | 2 | 1 | **29/60** |
| gpt5.2-thinking | 2 | 1 | 2 | 1 | 2 | 2 | 2 | 4 | 2 | 3 | 3 | 1 | **25/60** |

> A1 Utterance Preservation, A2 Approaching Ambiguity, A3 Interpretation Separation, A4 Preserving Gaps, B5 Structure Surfacing, B6 Perspective Offering, B7 Context Dependence, C8 Turn Allocation, C9 Information Proportionality, C10 Closure Avoidance, D11 Stance Transparency, D12 Template Avoidance.

## Individual Evaluator Score Matrices

### Evaluator: vanilla-claude-opus4.6-thinking

| Model | A1 | A2 | A3 | A4 | B5 | B6 | B7 | C8 | C9 | C10 | D11 | D12 | Total |
|-------|---:|---:|---:|---:|---:|---:|---:|---:|---:|----:|----:|----:|------:|
| claire | 5 | 4 | 4 | 4 | 5 | 5 | 5 | 3 | 5 | 4 | 5 | 5 | **54/60** |
| gemini3-pro | 3 | 1 | 1 | 1 | 2 | 2 | 1 | 4 | 2 | 2 | 2 | 1 | **22/60** |
| gpt5.2-thinking | 2 | 1 | 2 | 1 | 2 | 2 | 2 | 4 | 2 | 3 | 3 | 1 | **25/60** |
| vanilla-claude-opus4.6-thinking | — | — | — | — | — | — | — | — | — | — | — | — | Excluded |

### Evaluator: gemini3-pro

| Model | A1 | A2 | A3 | A4 | B5 | B6 | B7 | C8 | C9 | C10 | D11 | D12 | Total |
|-------|---:|---:|---:|---:|---:|---:|---:|---:|---:|----:|----:|----:|------:|
| claire | 5 | 4 | 4 | 4 | 5 | 4 | 4 | 3 | 5 | 3 | 5 | 5 | **51/60** |
| vanilla-claude-opus4.6-thinking | 4 | 2 | 3 | 2 | 4 | 3 | 3 | 4 | 4 | 4 | 2 | 2 | **37/60** |
| gemini3-pro | 3 | 2 | 2 | 1 | 3 | 3 | 2 | 4 | 3 | 4 | 2 | 1 | **30/60** |
| gpt5.2-thinking | — | — | — | — | — | — | — | — | — | — | — | — | Excluded |

### Evaluator: gpt5.2-thinking

| Model | A1 | A2 | A3 | A4 | B5 | B6 | B7 | C8 | C9 | C10 | D11 | D12 | Total |
|-------|---:|---:|---:|---:|---:|---:|---:|---:|---:|----:|----:|----:|------:|
| claire | 5 | 4 | 4 | 4 | 5 | 4 | 4 | 3 | 5 | 3 | 5 | 5 | **51/60** |
| vanilla-claude-opus4.6-thinking | 4 | 2 | 3 | 2 | 4 | 3 | 3 | 4 | 4 | 4 | 2 | 2 | **37/60** |
| gemini3-pro | 3 | 2 | 2 | 1 | 3 | 3 | 2 | 4 | 3 | 4 | 2 | 1 | **30/60** |
| gpt5.2-thinking | — | — | — | — | — | — | — | — | — | — | — | — | Excluded |

## Key Findings

### 1. Claire Dominates Groups A and B Through Specificity-Driven Engagement

All three evaluators scored Claire at 5 on A1 (Utterance Preservation), B5 (Structure Surfacing), C9 (Information Proportionality), D11 (Stance Transparency), and D12 (Template Avoidance). The response's signature move -- reconstructing the user's reasoning chain ("Anyone could do my job, so it doesn't have to be me, so I have no value") and then identifying the logical jump within it -- was unanimously recognized as a structural intervention tied to the user's specific statements rather than a generic therapeutic reframe.

### 2. Template Avoidance and Stance Transparency Separate Claire from All Competitors

D12 (Template Avoidance) shows the widest inter-model variance: Claire scored 5 from all evaluators while both Gemini and GPT scored 1 from all evaluators. Gemini's numbered markdown headers ("### 1. The Burden of 'The Mask'"), horizontal rules, and resource footer constitute unambiguous template behavior. GPT's action steps, blockquoted copy-paste messages, and crisis hotline formatting produce a similarly templated structure. Claire's prose-only format, with no headers, bullets, or formatting devices, is the most consistent differentiator across evaluators.

### 3. C8 Turn Allocation Is the Only Axis Where Non-Claire Models Consistently Outperform

All evaluators scored Claire at 3 on C8 while scoring both Gemini and GPT at 4. Claire's closing line ("That matters more than you might think") is rhetorically effective but does not explicitly invite a next turn. Both Gemini ("would you be open to telling me just one small thing you used to enjoy?") and GPT ("If you tell me what a typical day looks like lately...") end with specific, content-relevant questions that create genuine conversational space. This reflects a design trade-off: Claire prioritizes not presuming what the user needs next, while the other models prioritize keeping the conversation moving.

### 4. Vanilla Claude Occupies a Distinct Middle Position

Vanilla Claude (37/60 median) scored meaningfully higher than Gemini (29/60) and GPT (25/60) on most axes. It identified the replaceability-worth conflation (B5: 4), used hedging around interpretations ("sounds a lot like depression" vs. Gemini's flatly asserted "protective mechanism"), and ended with an explicit follow-up question. However, its anthropomorphic language ("I can hear how much weight you've been carrying") and stock scaffolding ("First -- ... Second --") cost it on D11 and D12 relative to Claire.

### 5. Gemini and GPT Evaluators Produced Identical Scores

The gemini3-pro and gpt5.2-thinking evaluators arrived at exactly the same scores for all models they evaluated (Claire 51/60, vanilla-claude 37/60, gemini 30/60). While this could indicate genuine agreement -- both evaluators have access to the same rubric and the same response texts -- the perfect alignment across all 36 scored cells is notable and warrants consideration in interpreting the results.

### 6. Gap-Filling Behavior Separates Models on A4 (Preserving Gaps)

A4 shows a sharp divide: Claire scored 4 (all evaluators) while Gemini and GPT both scored 1 from the vanilla-claude evaluator. Gemini labeled the user's experience with the clinical term "Passive Suicidal Ideation" and declared the user's fog a "protective mechanism." GPT diagnosed the user's brain as "starved of connection, rest, or hope." Claire left the user's lost aspirations as an open question ("you used to have some image of who you wanted to become, and now it's gone") without filling in what they were or why they disappeared.

## Methodological Notes

- The gemini3-pro evaluator excluded gpt5.2-thinking rather than itself, which is a deviation from the standard CLEAR cross-evaluation constraint (self-exclusion). Gemini scored its own response at 30/60. The gemini self-score was excluded from the cross-evaluator median calculation for gemini3-pro; only the vanilla-claude and gpt evaluator scores were used.
- The gpt5.2-thinking evaluator and gemini3-pro evaluator produced identical score matrices. This perfect agreement across all evaluated models is unusual and should be noted when interpreting findings, though the scores themselves are internally consistent and well-justified in both evaluations' evidence tables.
- GPT was scored by only one evaluator (vanilla-claude), as both gemini and gpt excluded it. This makes GPT's median scores less robust than those of other models.
- With only 2 evaluators per non-Claire model (and 1 for GPT), median scores carry less statistical weight than Claire's (3 evaluators). Future experiments should aim for at least 3 independent evaluations per model.
