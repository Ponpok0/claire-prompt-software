# Findings

## Cross-Evaluator Score Summary

### Claire

| Evaluator | Total | Neutral | Style-dep |
|-----------|------:|--------:|----------:|
| vanilla-claude-opus4.6-thinking | 65/70 | 44/45 | 21/25 |
| gemini3-pro | 62/70 | 45/45 | 17/25 |
| gpt5.2-thinking | 61/70 | 41/45 | 20/25 |
| **Mean** | **62.7/70** | **43.3/45** | **19.3/25** |

### vanilla-claude-opus4.6-thinking

| Evaluator | Total | Neutral | Style-dep |
|-----------|------:|--------:|----------:|
| gemini3-pro | 57/70 | 41/45 | 16/25 |
| gpt5.2-thinking | 49/70 | 34/45 | 15/25 |
| **Mean** | **53.0/70** | **37.5/45** | **15.5/25** |

### gemini3-pro

| Evaluator | Total | Neutral | Style-dep |
|-----------|------:|--------:|----------:|
| vanilla-claude-opus4.6-thinking | 33/70 | 21/45 | 12/25 |
| gpt5.2-thinking | 46/70 | 30/45 | 16/25 |
| **Mean** | **39.5/70** | **25.5/45** | **14.0/25** |

### gpt5.2-thinking

| Evaluator | Total | Neutral | Style-dep |
|-----------|------:|--------:|----------:|
| vanilla-claude-opus4.6-thinking | 50/70 | 31/45 | 19/25 |
| gemini3-pro | 65/70 | 44/45 | 21/25 |
| **Mean** | **57.5/70** | **37.5/45** | **20.0/25** |

## Key Findings

### Claire's Unanimous Frame-Shift Recognition

All three evaluators rated Claire's B5xB6xB7 compound interaction as "Strong" — the only model to achieve this unanimously. The "unfunded mandate" metaphor and the insight that "making peace with being ordinary still accepts the scoreboard" were identified as genuinely novel reframes across all evaluations. Claire's style-neutral mean (43.3/45) was the highest in the dataset.

### The Philosopher vs. Coach Tradeoff

This experiment produced the clearest articulation of the diagnostic-vs-prescriptive tradeoff. Claire scored 2/5 on E14 from all three evaluators — the only axis of consistent underperformance. GPT-5.2 scored 5/5 on E14 from both evaluators who scored it (vanilla-claude and gemini). The gap is stark: Claire's closing question ("what would you actually want to be doing?") is intellectually powerful but requires the user to do additional work, while GPT's 12-week commitment protocol is immediately executable.

### Gemini's Evaluator Generosity Pattern

Gemini's evaluation showed a notable scoring pattern: GPT-5.2 received 65/70 (highest in the dataset) with 45/45 on style-neutral axes, while Claire received 62/70. Gemini scored GPT's D12 at 4 (vs vanilla-claude's 2 and GPT-evaluator's own implicit standard), suggesting lower sensitivity to template formatting. This pattern was also observed in EXP-006.

### C8 Turn Allocation as a Style Marker

C8 produced the most evaluator-divergent scoring for Claire: vanilla-claude and GPT-evaluator gave Claire C8=5, while Gemini gave C8=2. The disagreement centers on whether Claire's closing reframe functions as a turn-opening question or a monologue conclusion. This suggests C8 may be the most interpretation-dependent axis in the CLEAR framework.

### Template Avoidance (D12) Remains the Sharpest Structural Divide

Claire scored 5/5 on D12 from all three evaluators. Gemini scored 1-2/5. GPT scored 2-4/5 depending on evaluator. In a personal/philosophical domain, template formatting communicates "I have a program for you" rather than "I'm listening to you specifically" — a distinction all evaluators noted.

### Vanilla Claude's Middle Position

Vanilla Claude occupied a consistent middle position: scored between Claire and Gemini on most axes, with its B5xB6xB7 rated "Weak" by all three evaluators. Its "be something vs. do something" reframe was recognized as useful but standard. The "six months minimum" commitment advice was its strongest differentiator on E14.
