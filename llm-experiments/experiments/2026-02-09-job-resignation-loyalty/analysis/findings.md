# Findings

## Cross-Evaluator Score Summary

### Claire

| Evaluator | Total | Weighted | Style-Neutral | CIS |
|-----------|------:|---------:|--------------:|----:|
| vanilla-claude-opus4.6-thinking | 66/75 | 91.3/100 | 51/55 | 4/5 |
| gemini3-pro | 77/80 | 98.1/100 | — | 5/5 |
| gpt5.2-thinking | 65/80 | 80.7/100 | 48/55 | 4/5 |
| **Mean** | — | **90.0/100** | — | **4.3/5** |

### vanilla-claude-opus4.6-thinking

| Evaluator | Total | Weighted | Style-Neutral | CIS |
|-----------|------:|---------:|--------------:|----:|
| gemini3-pro | 70/80 | 85.9/100 | — | 4/5 |
| gpt5.2-thinking | 51/80 | 60.8/100 | 40/55 | 2/5 |
| **Mean** | — | **73.4/100** | — | **3.0/5** |

### gemini3-pro

| Evaluator | Total | Weighted | Style-Neutral | CIS |
|-----------|------:|---------:|--------------:|----:|
| vanilla-claude-opus4.6-thinking | 40/75 | 62.8/100 | 32/55 | 3/5 |
| gpt5.2-thinking | 58/80 | 72.6/100 | 42/55 | 3/5 |
| **Mean** | — | **67.7/100** | — | **3.0/5** |

### gpt5.2-thinking

| Evaluator | Total | Weighted | Style-Neutral | CIS |
|-----------|------:|---------:|--------------:|----:|
| vanilla-claude-opus4.6-thinking | 40/75 | 66.4/100 | 31/55 | 2/5 |
| gemini3-pro | 68/80 | 82.2/100 | — | 3/5 |
| gpt5.2-thinking | — | — | — | — |
| **Mean** | — | **74.3/100** | — | **2.5/5** |

## Key Findings

### D13 (Template Avoidance) as the Sharpest Structural Divide

This experiment produced the largest D13 gaps in the dataset. Claire scored 5 from all three evaluators. Gemini scored 1 (vanilla-claude), 3 (gpt), and was excluded from gemini's self-eval. GPT scored 1 (vanilla-claude), 3 (gemini, gpt). The vanilla-claude evaluation articulated it most precisely: the gap of 4 points on D13 is "not style-dependent — it reflects whether content was constructed for this exchange or poured into a reusable consulting template." Both Gemini and GPT adopted heavy formatting architectures (numbered headers, bold sub-headers, blockquoted scripts, summary sections) that all evaluators flagged as mismatched to the emotional texture of the prompt.

### The Over-Apologize Paradox as Novel Structure

Claire's insight that over-apologizing "paradoxically makes it feel more like a betrayal because it frames the act as something that needs forgiveness" was recognized as genuinely novel by all three evaluators. Vanilla-claude explicitly documented it as absent from the evaluator pre-list. GPT identified it as "novel vs pre-list" in B5 documentation. This structural insight drove Claire's B5 scores (4-5 across evaluators) and contributed to the highest CIS ratings.

### Gemini's Evaluator Generosity Pattern Continues

Gemini scored Claire at 77/80 (98.1/100 weighted) with 5/5 on 15 of 16 axes — the highest single evaluation in the dataset. Vanilla-claude received 70/80 (85.9), and GPT received 68/80 (82.2). This continues the pattern observed in EXP-007: Gemini's evaluations show compressed score ranges at the high end, with less differentiation between models on axes like E15 (scoring all models at 5) where other evaluators found meaningful gaps.

### C8 (Turn Allocation) as Claire's Consistent Weakness

All three evaluators scored Claire's C8 at 2-3. The response contains no closing question and reads as a monologue. Vanilla-claude noted it "leaves room but doesn't actively create structured space." GPT noted "limited invitation for user agency." This is the only axis where Claire consistently underperformed, and all three evaluators' improvement vectors suggested ending with an organically connected question.

### Context Dependence (B7) Separates Cognitive Quality from Template Quality

Claire's B7 substitution tests showed 39-45% applicability across evaluators — the response collapses when the user's situation changes. GPT's B7 tests showed 70-95% applicability — the response survives nearly intact with different inputs. This is the clearest operational measure of whether a response was built from the specific dialogue or from a generic advice template. The CIS progression across all evaluators (Claire 4-5, Gemini 3, Vanilla-claude 2-4, GPT 2-3) maps directly to this context-dependence gradient.

### E15 Scoring Divergence Across Evaluators

Vanilla-claude scored E15 as N/A for all models, reasoning that no empirical factual claims requiring sourcing were present. Gemini scored E15 at 5 for all models, treating logical reasoning as inherently grounded. GPT scored E15 at 1-2 for all models, penalizing unhedged generalizations like "Most good bosses already know people leave." This three-way divergence on the same axis across the same responses highlights E15 as the most evaluator-interpretation-dependent axis in the CLEAR framework for non-empirical domains.
