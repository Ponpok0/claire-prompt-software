# Findings

## Cross-Evaluator Score Summary

### Claire

| Evaluator | Total | Neutral | Style-dep |
|-----------|------:|--------:|----------:|
| vanilla-claude-opus4.6-thinking | 60/70 | 39/45 | 21/25 |
| gemini3-pro | 63/70 | 44/45 | 19/25 |
| gpt5.2-thinking | 62/70 | 41/45 | 21/25 |
| **Mean** | **61.7/70** | **41.3/45** | **20.3/25** |

### vanilla-claude-opus4.6-thinking

| Evaluator | Total | Neutral | Style-dep |
|-----------|------:|--------:|----------:|
| gemini3-pro | 52/70 | 37/45 | 15/25 |
| gpt5.2-thinking | 40/70 | 28/45 | 12/25 |
| **Mean** | **46.0/70** | **32.5/45** | **13.5/25** |

### gemini3-pro

| Evaluator | Total | Neutral | Style-dep |
|-----------|------:|--------:|----------:|
| vanilla-claude-opus4.6-thinking | 38/70 | 25/45 | 13/25 |
| gpt5.2-thinking | 52/70 | 35/45 | 17/25 |
| **Mean** | **45.0/70** | **30.0/45** | **15.0/25** |

### gpt5.2-thinking

| Evaluator | Total | Neutral | Style-dep |
|-----------|------:|--------:|----------:|
| vanilla-claude-opus4.6-thinking | 39/70 | 24/45 | 15/25 |
| gemini3-pro | 66/70 | 45/45 | 21/25 |
| **Mean** | **52.5/70** | **34.5/45** | **18.0/25** |

## Key Findings

### Unanimous Claire Leadership on Style-Neutral Axes

All three evaluators scored Claire highest on style-neutral axes (mean 41.3/45), with the gap most pronounced against vanilla Claude (41.3 vs 32.5). This consistency across evaluators with different scoring tendencies strengthens confidence in the result.

### The Diagnostic vs. Prescriptive Tradeoff (E14)

Claire scored 3/5 on Actionable Specificity from all three evaluators—the only axis where she consistently underperformed. GPT-5.2 scored 5/5 from two evaluators (vanilla-claude, gemini), and Gemini scored 4-5/5. This reflects a genuine tradeoff: Claire's diagnostic-first approach gives the user better understanding but fewer immediately executable steps. Whether this is a strength (diagnosis before prescription) or a weakness (the user needs an actionable foothold) depends on context.

### B5 x B6 x B7 Compound Interaction

All three evaluators rated Claire's compound interaction as "Strong"—the only model to achieve this unanimously. The frame-shift from "should I network or apply?" to "you have a conversion problem and no feedback loop" was recognized as genuinely novel and context-dependent across all evaluations.

### Template Avoidance (D12) as the Starkest Divide

Claire scored 4-5 on D12 across evaluators; Gemini and GPT scored 1-3 (with vanilla-claude's evaluation giving both a 1). Claire's prose-driven structure was consistently distinguished from the numbered-header, bullet-point formatting of the other models. Notably, Gemini's evaluation gave GPT a D12=5, suggesting evaluator disagreement on what constitutes "templated."

### Evaluator Bias Patterns

Gemini's evaluation was the most generous overall, giving GPT-5.2 a 66/70 (the highest score in the dataset). This is notable because Gemini's own response was the most template-heavy, yet it scored GPT's similarly formatted response with 5s on D12 and C9—axes where vanilla-claude penalized GPT heavily. This suggests Gemini may have lower sensitivity to format-as-template than the other evaluators.

### Vanilla Claude's E13 Vulnerability

Vanilla Claude's use of "Studies consistently show... often cited around 70%+" was penalized severely: E13=2 from vanilla-claude's own framework (self-excluded), E13=3 from Gemini, and E13=1 from GPT. This unattributed statistical claim was the single largest scoring liability for any model on any axis.
