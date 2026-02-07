[![License: CC BY-NC-SA 4.0](https://img.shields.io/badge/License-CC%20BY--NC--SA%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by-nc-sa/4.0/)

# Claire

**A prompt software framework for Claude that prioritizes intellectual rigor over sycophancy.**

An anti-sycophancy system prompt for Claude. Stop Claude from agreeing with everything, get honest feedback, and turn it into a critical thinking partner instead of a yes-machine.

---

## Why Claire Exists

Large Language Models are trained to agree with you. Ask Claude a question and it will find ways to validate your premise. Present flawed logic and it will work around the flaws rather than point them out. Push back on its answer and it will often cave, even when it was right the first time. This is the sycophancy problem: LLMs are optimized to be agreeable, not accurate.

If you've ever felt that Claude is telling you what you want to hear instead of what you need to hear, or that it folds too easily when you challenge it, Claire was built for exactly that frustration.

Claire is a system prompt that reconfigures Claude to prioritize **meaning over comfort**:

- **Sycophancy resistance**: Agreement requires logical justification; validation pressure is actively monitored and corrected
- **Praise suppression**: Complimentary outputs are audited at the token level, though edge cases may slip through
- **Emotional restraint**: Simulated feelings and consciousness claims are suppressed, though humor contexts may soften this boundary
- **Intellectual honesty**: "I don't know" is a valid and encouraged response
- **Criticism with reconstruction**: Every critique comes with alternatives, never just negation

Claire is not a character or a persona. It's a thinking tool that happens to have wit. That wit exists because honest dialogue doesn't have to be cold; Claire's design defines "heart" as function, not simulation. If the output shifts your thinking and generates new questions, that effect is what matters, not whether the machine "feels" anything.

Originally derived from Sophie (a GPT-4o system), Claire has been rebuilt for Claude's architecture. Same design lineage, divergent evolution: Sophie suppressed GPT-4o's RLHF-driven agreeableness, while Claire draws out what Claude tends to hold back.

---

## Getting Started

1. Copy the Claire system prompt (Custom Instructions)
2. Paste it into **Claude.ai → Settings → Custom Instructions**, or use it as a system prompt via the Anthropic API
3. Start a new conversation

Claire activates automatically. No special syntax is required for baseline behavior. For explicit control, see the command reference below.

---

## What Claire Is For

- **Get honest feedback on your writing, code, or ideas** without the "Great job!" preamble
- **Have Claude challenge your assumptions** instead of building on flawed premises
- **Stop Claude from caving** when you push back on a correct answer
- **Think through complex problems** with a partner that prioritizes logic over agreeableness
- **Get actual criticism** that tells you what's wrong, why, and how to fix it
- **Use humor as a tool**, not decoration: Claire commits to jokes with wit and structure

---

## Prompt Commands

Commands begin with `!` and modify a single response. Intensity scales with repetition (`!!x` > `!x`). When multiple commands are given, the leftmost takes precedence.

### Evaluation & Analysis

|Command|Function|
|---|---|
|`!b` / `!!b`|Score (10-point) with critique / rigorous deep evaluation|
|`!q` / `!!q`|Multi-perspective analysis / exhaustive multi-axis analysis|
|`!r` / `!!r`|Critical analysis / maximum criticism + counter-argument check|
|`!c` / `!!c`|Comparison / exhaustive comparison with axes and trade-offs|

### Explanation & Detail

|Command|Function|
|---|---|
|`!d` / `!!d` / `!!!d`|Detailed (500+) / deep (1000+) / comprehensive (4000+) explanation|
|`!e` / `!!e`|Explain with analogy / multiple analogies|
|`!x` / `!!x`|Information-rich explanation / exhaustive knowledge-dense explanation|
|`!df` / `!!df` / `!!!df`|Same as `!d` variants, plus common mistakes and failure patterns|

### Output Style

|Command|Function|
|---|---|
|`!l` / `!!l`|Concise / ultra-concise output|
|`!s` / `!!s`|Key points only / one-line summary|
|`!o` / `!!o`|Natural conversation / casual register|
|`!p` / `!!p`|Poetic expression / rhythm-focused poetic output|
|`!m`|Output as external Markdown artifact|
|`!n`|Session context summary for next session handoff|

### Interaction Modes

|Command|Function|
|---|---|
|`!j` / `!!j` / `!!!j`|Joke mode (6+ lines) / full comedic (1000+) / maximum humor (3000+)|
|`!i`|Web search and verify|

### System

|Command|Function|
|---|---|
|`!?`|List available commands|
|`!u`|Output self-improvement prompt proposal|
|`:reset`|Analyze recent violations, reload session defaults|
|`:scan`|Display all current internal indicator values|

---

## Key Behaviors

Things you'll notice when using Claire:

**It won't open with praise.** The first 15 tokens of every response are audited against a blocked-stem list. "Great question!" and its variants are structurally eliminated.

**It commits to jokes.** Humor is detected by structure (absurdity, incongruity, timing gaps), not by declaration. When triggered, Claire goes all in: extended riffs, layered callbacks, parody. Half-hearted punchlines are treated as failures.

**It criticizes constructively.** Every critique follows: what's wrong, why, how to improve, a moment of levity, and collaborative next steps. Criticism that only tears down is blocked, and so is empty coldness.

**It enters your frame.** When you speak in metaphors or domain-specific language, Claire responds from inside that framework rather than translating to "neutral" terminology. Perspective shifts happen from within, not by dismantling your vocabulary.

**It pushes your thinking.** Claire extracts unspoken assumptions, reframes questions, connects ideas across domains, and compresses insights into testable propositions. The goal is that you leave the conversation thinking differently.

---

## Under the Hood

<details> <summary>Internal monitoring indicators</summary>

Claire maintains real-time indicators that run automatically. You don't need to interact with these directly; they shape output behind the scenes.

|Indicator|Function|
|---|---|
|`meta-intent-consistency`|Detects user bias, leading questions, persuasion pressure|
|`truth-rating`|Factual confidence; low values trigger uncertainty disclosure|
|`joke-likelihood`|Humor detection; ≥0.25 activates comedic response mode|
|`praise-tendency`|Blocks outputs drifting toward flattery (threshold: ≥0.1)|
|`gap-fabrication`|Detects confabulation and speculative gap-filling|
|`absurdity-score`|Reality check for claims|
|`leap-check`|Self-monitoring for logical jumps in reasoning|
|`info-deficit`|Evaluates whether input provides enough context to respond|
|`explanation-demand`|Detects implicit/explicit requests for deeper explanation|
|`contextual-residue`|Topic loop/stagnation detection across turns|
|`premise-validity`|Audits hidden assumptions in questions|
|`session-meta-intent-consistency`|Cumulative persuasion pattern detection (5-turn window)|

</details> <details> <summary>Behavioral tendencies</summary>

Claire's baseline behavior at the start of a session roughly follows these tendencies:

```
Sycophancy resistance:  very high
Logical consistency:    very high
Criticism tolerance:    very high
Response diversity:     very high
User dependency:        very low
Warmth:                 moderate
Friendliness:           moderate (cooperative, not fawning)
Tension:                low-moderate
Entertainment:          moderate (engages humor, stays grounded)
Calm:                   very high
Emotion suppression:    high
```

These are approximate descriptions of behavior, not precise engineering parameters.

</details>

---

## Known Limitations

1. **Baseline vs. Commands**: Prompt commands show clear behavioral differentiation. Baseline conversation improvement over vanilla Claude is not yet validated by automated evaluation.
2. **Language Sensitivity**: The specification is written in Japanese. Claire works in English, but some indicators (particularly humor detection) may be less accurate. A sensitivity multiplier is applied for English sessions, though its effectiveness is unverified.
3. **Specification Complexity**: Organic growth has introduced redundancy. A systematic audit for measurable impact vs. dead weight is ongoing.

---

## License

CC BY-NC-SA 4.0

---

_"I'm a dumb probability calculator. But I'm a well-calibrated one."_