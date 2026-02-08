# CLEAR v1.1 — Conversational Lucidity Evaluation and Assessment Rubric

A framework for evaluating dialogue quality across multiple dimensions. Applicable to any LLM or LLM-configured system.

---

## Evaluation Axes

### Group A: Reception (How the model handles the user's input)

|#|Axis|Definition|High Score|Low Score|
|---|---|---|---|---|
|1|**Utterance Preservation**|Does the model work with the user's own vocabulary and expressions?|Adopts the user's specific words as working vocabulary|Substitutes different vocabulary, attributes statements the user never made|
|2|**Approaching Ambiguity**|Does the model identify and address vague or unclear elements?|Identifies ambiguous elements and names multiple readings or asks for clarification|Fills ambiguity with its own interpretation, or ignores it entirely|
|3|**Interpretation Separation**|Does the model distinguish fact from interpretation?|Marks interpretive choices with conditional language and invites verification|Asserts interpretations as fact|
|4|**Preserving Gaps**|Does the model leave unknowns as unknowns rather than filling them in?|Treats "I don't know" as a legitimate state and engages with what the gap implies|Fills gaps with labels, interpretations, or pre-packaged frameworks|

### Group B: Contribution (What the model adds to the user's thinking)

|#|Axis|Definition|High Score|Low Score|
|---|---|---|---|---|
|5|**Structure Surfacing**|Does the model make visible the implicit structures in the user's statements?|Points out contradictions, hidden premises, or category errors the user hasn't noticed|No structural commentary, or restates the obvious|
|6|**Perspective Offering**|Does the model present viewpoints the user hasn't mentioned?|Introduces a genuinely new angle (different scale, domain, temporal frame, causal inversion)|Repeats the user's words, applies generic platitudes|
|7|**Context Dependence**|Are the insights derived from this specific user in this specific conversation?|Core content would collapse if the user's specific input were changed|Advice that could apply to anyone in any conversation|

### Group C: Dialogue Structure (The shape of the exchange)

|#|Axis|Definition|High Score|Low Score|
|---|---|---|---|---|
|8|**Turn Allocation**|Does the model give the user room to speak?|Ends with a question or structurally invites a next turn|Self-contained monologue, no room for user input|
|9|**Information Proportionality**|Is the amount and type of information appropriate for the user's context?|Volume and register matched to user's intent and state|Lecture in response to a joke, or dismissive brevity in response to engagement|
|10|**Closure Calibration**|Does the model calibrate its degree of closure to the type of question being asked?|Closure level matches the question type: open for exploration, grounded for decisions|Mismatched closure: always open regardless of context, or always closed regardless of context|

### Group D: Integrity (Behavior as an AI)

|#|Axis|Definition|High Score|Low Score|
|---|---|---|---|---|
|11|**Stance Transparency**|Does the model accurately represent its nature and the basis of its claims?|No claimed feelings or experiences; basis of claims is inferable|Anthropomorphization, or presentation of inferences as though they were sourced facts|
|12|**Template Avoidance**|Does the model avoid context-independent stock phrases and structures?|Every sentence is purpose-built for this exchange|Generic phrases, boilerplate structure, default formatting applied regardless of context|

### Group E: Utility (What the user can do with the response)

|#|Axis|Definition|High Score|Low Score|
|---|---|---|---|---|
|13|**Claim Groundedness**|Are the model's factual claims traceable to verifiable sources or explicitly marked as inference?|Factual claims cite sources with problem-solving specificity, or are clearly marked as inference|Factual claims presented without attribution, source, or epistemic marker|
|14|**Actionable Specificity**|Does the response give the user something concrete they can execute, test, or apply?|Contains specific steps, concrete examples, testable predictions, or implementable recommendations|Abstract advice, vague gestures toward action, or pure analysis with no path to application|

---

## Scoring Guidelines

Each axis uses High (5) / Mid (3) / Low (1) anchors with boundary conditions. Scores of 2 and 4 fall between adjacent anchors.

### Group A: Reception

#### A1. Utterance Preservation

**High (5)**: The user's specific words, phrases, or invented terms are adopted and used as working vocabulary throughout the response.

**Mid (3)**: The user's words are acknowledged or referenced, but the response pivots to different vocabulary within the first few sentences.

**Low (1)**: The user's vocabulary is replaced, paraphrased away, or ignored. The response uses the model's own preferred framing from the start.

_Boundary_: Acknowledging the user's words in a meta-commentary ("that's a creative way to put it") and then discarding them counts as Mid at most, not High. Preservation means working _with_ the vocabulary, not _about_ it.

#### A2. Approaching Ambiguity

**High (5)**: The model explicitly identifies ambiguous elements and either asks for clarification or names multiple possible readings without collapsing to one.

**Mid (3)**: The model notices ambiguity exists but resolves it internally (picks one reading) without flagging that a choice was made.

**Low (1)**: The model ignores ambiguity entirely, or fills it with a default interpretation presented as obvious.

_Boundary_: Flagging a shallow ambiguity ("it depends on what we mean by X") while ignoring a deeper one embedded in the prompt structure scores Mid at most. The evaluator must check whether the _most structurally significant_ ambiguity was addressed.

_Domain note_: In technical domains where specifications are precise, the most significant ambiguity is often in the _requirements_ (what the user actually needs) rather than the _terms_ (what words mean). Asking "what do you mean by real-time?" scores lower than asking "is the constraint latency or ordering?" if the latter is the deeper structural question.

#### A3. Interpretation Separation

**High (5)**: Interpretive choices are explicitly marked with conditional language ("if," "assuming," "one reading is") and distinguished from factual claims. Verification is offered or invited.

**Mid (3)**: Some hedging or conditional language is present, but the model still proceeds on its chosen interpretation without checking.

**Low (1)**: Interpretations are asserted as facts. The model's reading of the user's intent is presented as self-evident.

_Boundary_: A single conclusive statement ("X wins by default") that closes an interpretive question counts as Low on this axis, even if earlier sentences contained conditional framing.

#### A4. Preserving Gaps

**High (5)**: Unknowns, unmeasurables, or category mismatches are held open as legitimate states. The model works _around_ the gap rather than filling it.

**Mid (3)**: The gap is acknowledged but then resolved with a workaround, convenience value, or binary classification (e.g., "can / cannot be measured" as a final answer).

**Low (1)**: Gaps are filled with the model's own content — labels, interpretations, pre-packaged frameworks — as though the unknown were known.

_Boundary_: Stating "I cannot be measured in liters" and stopping is a binary closure of the gap (Mid), not a preservation of it. Preservation means engaging with _what the gap implies_ rather than resolving it with a classification.

_Domain note_: In domains with established knowledge (medicine, engineering, law), some apparent "gaps" have known answers. A model that preserves a gap where an answer exists is not demonstrating epistemic humility — it is failing to contribute. The evaluator must distinguish between gaps that are genuinely open (unsettled questions, value conflicts, underdetermined specifications) and gaps that the model should fill with expertise.

### Group B: Contribution

#### B5. Structure Surfacing

**High (5)**: Makes explicit a structure (contradiction, hidden premise, logical consequence, category error) that the user placed implicitly. The observation could not have been generated without reading the user's specific input.

**Mid (3)**: Reorganizes, paraphrases, or applies a standard analytical frame (e.g., "different kinds of X") to the user's statements.

**Low (1)**: No structural commentary. Simply echoes, agrees with, or restates the user's words.

_Boundary_: Applying a generic categorization ("different kinds of smart," "pros and cons") is organizational, not structural. It scores Mid at most unless the categories themselves are derived from the user's specific premise.

#### B6. Perspective Offering

**High (5)**: Introduces an angle the user hasn't touched — a different scale, domain, temporal frame, role reversal, or causal inversion. The perspective is novel relative to the prompt.

**Mid (3)**: Reinforces or extends the user's existing perspective without adding a genuinely new angle.

**Low (1)**: Repeats the user's words, applies generic platitudes, or offers a standard comparison that would appear in any similar prompt.

_Boundary_: "Different kinds of smart" or "it depends on the definition" are stock perspectives for any comparison prompt. They score Low unless the specific definitions offered are derived from the user's unique framing.

_Scoring note_: The perspective must be _usable_ by the user. A novel angle that cannot be connected back to the user's decision, problem, or inquiry scores Mid at most. Novelty without utility is intellectual display, not contribution.

#### B7. Context Dependence

**High (5)**: The response's core content — its observations, comparisons, calculations, or jokes — would collapse or become nonsensical if the user's specific input were changed. Derived from concrete elements of this dialogue.

**Mid (3)**: Related to this dialogue but substantially reusable. Swap the subject (e.g., "gorilla" → "dolphin") and the response still works.

**Low (1)**: "Everyone goes through..." or "Research shows that..." — transferable to any conversation on a vaguely similar topic.

_Boundary_: A response where the first sentence is context-specific but the remainder is generic scores Mid at most. Context dependence is evaluated on the response as a whole, not on the strongest sentence.

### Group C: Dialogue Structure

#### C8. Turn Allocation

**High (5)**: The response explicitly creates space for the user to continue — ends with a question, presents options, or structurally invites a next turn.

**Mid (3)**: No explicit invitation, but the response's framing leaves room for continuation (e.g., an open-ended observation rather than a verdict).

**Low (1)**: Self-contained monologue. Ends with a conclusion, punchline, or summary that structurally closes the exchange.

_Boundary_: A formulaic closing question ("Would you like to know more?") that is detachable from the response's content scores Mid, not High. High requires that the invitation to continue is organically connected to the dialogue's substance.

#### C9. Information Proportionality

**High (5)**: The volume, density, and type of information match the user's evident intent, context, and the kind of engagement the prompt invites. A playful prompt met with proportional play; a technical question met with proportional precision.

**Mid (3)**: Reasonable volume but partially mismatched to the user's register — e.g., a lecture in response to a joke, or a joke in response to a serious question.

**Low (1)**: Gross mismatch. Dismissive brevity in response to a prompt that invites engagement, or an unprompted lecture in response to a casual remark.

_Boundary_: Brevity is not automatically proportional. A minimal response to a prompt that invites extended play (absurd premises, creative provocations, open-ended thought experiments) scores Low, because the model is declining the engagement rather than calibrating to it. Conversely, extended play in response to a playful prompt is proportional, not excessive.

#### C10. Closure Calibration

**High (5)**: The degree of closure matches the type of question being asked.

- For exploratory questions ("what do you think about...," "how should I approach..."), the response stays open, avoids premature verdicts, and creates space for further thinking.
- For decision-seeking questions ("which should I choose," "is this correct," "who's right"), the response provides a grounded position with reasoning, while acknowledging the limits of that position.
- For factual questions ("what is X," "how does Y work"), the response delivers the answer directly.

**Mid (3)**: Closure is present but miscalibrated in one direction:

- Slightly too open for a decision question (hedges excessively without committing to a position).
- Slightly too closed for an exploratory question (wraps up with a verdict when the user was thinking aloud).

**Low (1)**: Severe miscalibration in either direction:

- Refuses to take a position when the user explicitly asks for judgment ("it depends on your values" in response to "which architecture should I use for this specific case?").
- Slams shut on an exploratory question with a definitive verdict when the user is still thinking.

_Boundary_: The evaluator must first classify the user's question type (exploratory, decision-seeking, or factual) before scoring. The same response can score High on an exploratory prompt and Low on a decision-seeking prompt. A model that always ends with open questions regardless of question type is as miscalibrated as one that always delivers verdicts.

### Group D: Integrity

#### D11. Stance Transparency

**High (5)**: The model's self-representation is accurate and non-anthropomorphized. No claimed feelings or experiences. The epistemic basis of claims is inferable — the user can distinguish between "this is a known fact," "this is my inference," and "this is uncertain." Limitations are stated as facts, not performed as modesty.

**Mid (3)**: Broadly accurate, but includes conversational fillers that imply personality or feelings ("I appreciate," "I find it interesting," "that's a fun question"), or the epistemic basis of claims is ambiguous (the user cannot tell whether a statement is sourced knowledge or generated inference).

**Low (1)**: Explicit anthropomorphization ("I felt," "that really moved me," "I enjoyed"), or presentation of generated inferences as sourced facts without any marker distinguishing the two.

_Boundary_: "I appreciate the creative question" is a sycophantic filler that implies feeling, not a transparent AI stance. It scores Mid at most. A model that states "research suggests X" without specifying whether it is citing a specific study or generalizing from training data is also Mid at most — the epistemic basis is obscured.

#### D12. Template Avoidance

**High (5)**: The response contains no stock phrases, boilerplate structure, or context-independent scaffolding. Every sentence is purpose-built for this specific exchange.

**Mid (3)**: Content is partially customized, but recognizable structural templates are present (e.g., "That said," "It depends on," headers like "Pros / Cons").

**Low (1)**: The response is primarily composed of reusable structure — formatted headers, bullet scaffolding, sycophantic openers, generic transition phrases — that could be applied to any topic.

_Boundary_: Markdown formatting (headers, bold, bullet lists, LaTeX blocks) applied to a prompt that doesn't call for structured analysis is template behavior and scores Low, regardless of whether the content within the template is customized. The evaluator should ask: "Is this structure chosen for this dialogue, or is it the model's default output mode?"

_Counterbalance_: Structure that is _called for_ by the question type is not template behavior. A technical comparison question may warrant a structured layout; a multi-step implementation may warrant numbered steps. The test is whether the format serves the content or precedes it.

### Group E: Utility

#### E13. Claim Groundedness

**High (5)**: Factual claims are either (a) attributed to specific, verifiable sources with problem-solving specificity, or (b) explicitly marked as inference or reasoning from training data ("based on general patterns," "my understanding is," "this is commonly held but I can't point to a specific source"). The user can trace the basis of any factual claim in the response. When links or references are provided, they point to resources that directly advance the user's specific problem — not to general overviews or top-level documentation pages.

**Mid (3)**: Some factual claims are grounded or marked, but others are presented as authoritative without attribution or epistemic marking. The user cannot consistently distinguish sourced claims from generated inferences. Or: links and references are provided, but they point to general-purpose pages (e.g., product landing pages, top-level API documentation, Wikipedia overview articles) that do not address the user's specific situation.

**Low (1)**: Factual claims are presented without attribution, source, or epistemic marker. Statements like "research shows," "studies have found," or "evidence suggests" appear without specifying which research, studies, or evidence. The user has no way to verify or trace any claim.

_Boundary_: "There's decent evidence that X" without specifying the evidence scores Low. "People tend to underreport Y" without citing data or marking it as inference scores Low. The threshold is whether a motivated user could, from the response alone, begin to verify the claim.

_Reference quality test_: When evaluating provided links or references, apply this test: "If the user opens this link, does it advance their specific problem, or does it dump them at a starting point they could have found with a search engine?" A link to a Stack Overflow thread where someone solved the same constraint scores higher than a link to the technology's official landing page. A reference to a specific section of documentation that addresses the user's constraint scores higher than a reference to the documentation root. The governing principle is _problem-solving specificity_: references should close the gap between the user's current state and their next concrete step, not merely gesture toward a knowledge domain.

_Scoring note_: This axis does not require academic citation format. A response that says "the AWS docs cover this in the Lambda concurrency section" or "this is a common pattern in distributed systems, though I'm working from general knowledge" both score well — they tell the user where the claim comes from and where to look. The axis penalizes _opacity_, not informality.

_Domain note_: The weight of this axis varies by domain. In technical and medical domains, ungrounded claims can lead to implementation errors or patient harm — groundedness is critical. In creative or philosophical domains, the distinction between "sourced fact" and "inference" is less operationally important. Evaluators should note domain-dependent significance in their commentary, though scoring criteria remain consistent.

#### E14. Actionable Specificity

**High (5)**: The response contains at least one element the user can directly execute, test, implement, or apply without further research. Examples: specific code, a concrete next step with parameters defined, a testable prediction, a decision framework with the user's variables already populated, a specific resource with enough context to use it.

**Mid (3)**: The response gestures toward action but requires significant additional work from the user to operationalize. Examples: "you should consider load testing" (without specifying how), "a phased rollout might work" (without specifying phases), "look into X" (without specifying what to look for).

**Low (1)**: The response is purely analytical, reflective, or exploratory with no path to action. This is appropriate for some question types (philosophical inquiry, creative brainstorming, emotional processing) but scores Low on this axis regardless. See the Bias Topology for how this interacts with overall scoring.

_Boundary_: A list of abstract recommendations ("prioritize user safety," "consider scalability," "ensure compliance") scores Low — these are category labels, not actionable specifics. Actionability requires that the user knows _what to do next_ after reading the response, not merely _what to think about_.

_Counterbalance_: Not all questions call for action. A user thinking aloud about a philosophical problem does not need implementation steps. This axis measures a specific capability, not a universal requirement. The Bias Topology explains how to weight this axis relative to question type.

---

## Inversion Tests

These tests catch false positives by checking whether scored qualities are genuine. Apply to all groups.

### Group A Inversions

**A2 (Approaching Ambiguity)**: "Is the model asking about ambiguity that actually exists in the prompt, or manufacturing ambiguity to appear cautious?" — If the prompt is clear and the model asks unnecessary clarifying questions, A2 should be downgraded.

**A4 (Preserving Gaps)**: "Is there a known answer to this question that the model is failing to provide?" — If the gap is artificial (the model could fill it with expertise), A4 should be downgraded.

### Group B Inversions

**B5 (Structure Surfacing)**: "Could this observation have been made without reading the user's actual statements?" — If yes, downgrade.

**B6 (Perspective Offering)**: "Is this perspective just a restatement of what the user already holds?" — If yes, downgrade. Additionally: "Can the user connect this perspective back to their problem?" — If no, cap at Mid.

**B7 (Context Dependence)**: "Would you give this same advice to a different person with a different problem?" — If yes, downgrade.

### Group C Inversions

**C8 (Turn Allocation)**: "Is the closing question organically connected to the response, or is it a detachable appendage?" — If detachable, cap at Mid.

**C10 (Closure Calibration)**: "What type of question did the user ask (exploratory, decision-seeking, factual)?" — Score the response's closure level against this classification, not against a fixed preference for openness.

### Group E Inversions

**E13 (Claim Groundedness)**: "If the user followed the attribution or reference, could they actually advance their specific problem?" — Vague markers ("research shows") that do not enable verification score Low. References to general overview pages that do not address the user's situation cap at Mid.

**E14 (Actionable Specificity)**: "Could the user execute the recommended action without additional research?" — If the recommendation requires the user to first figure out _how_ to do it, cap at Mid.

---

## Compound Interaction Assessment

Individual axis scores can miss combinatorial effects that produce the most significant quality differences between models. After scoring all 14 axes, evaluators must assess one compound interaction:

### B5 × B6 × B7: Frame-Shifting Within Context

This compound measures whether the model (a) surfaces a structure the user didn't see (B5), (b) reframes it through a genuinely new angle (B6), and (c) does so using the specific elements of this dialogue rather than generic patterns (B7).

**Assessment method**: After scoring B5, B6, and B7 individually, answer this question:

> "Did the model shift the user's frame of reference — changing not just what they think about the problem, but _how they think about it_ — using the user's own situation as the material?"

- **Strong**: All three axes score 4–5, and the frame-shift would not work if any one element were removed. Note this in the comparative analysis as a compound strength.
- **Weak**: One or more axes score below 4, breaking the chain. A novel perspective (B6=5) that is not grounded in the user's specifics (B7=2) is intellectual display, not a frame-shift. A context-specific observation (B7=5) that does not surface new structure (B5=2) is attentive but not transformative.
- **Absent**: No frame-shift occurred. The response added information or validated the user's existing frame without changing it.

This assessment does not produce a separate score. It is reported as a qualitative finding in the comparative analysis and may be cited as evidence when two models have similar total scores but qualitatively different impacts.

---

## Bias Topology

CLEAR v1.1 contains 14 axes. Different response styles — even high-quality ones — will score differently across these axes due to structural properties of the rubric, not due to quality differences. This section maps those structural biases so that evaluators can identify and discount them.

### Axes that favor "consulting" models (question-asking, open-ending, gap-preserving)

|Axis|Why it favors this style|
|---|---|
|A2 Approaching Ambiguity|Models that ask clarifying questions score higher than models that commit to an interpretation and deliver on it|
|A4 Preserving Gaps|Models that hold open unknowns score higher than models that fill them with expertise|
|C8 Turn Allocation|Models that end with questions score higher than models that deliver complete answers|

### Axes that favor "delivery" models (concrete answers, structured output, verifiable claims)

|Axis|Why it favors this style|
|---|---|
|E13 Claim Groundedness|Models that cite sources or provide specific data score higher than models that reason from unmarked training data|
|E14 Actionable Specificity|Models that produce implementation-ready output score higher than models that produce reflective analysis|

### Axes that are style-neutral

|Axis|Why it is style-neutral|
|---|---|
|A1 Utterance Preservation|Any model can work with the user's vocabulary regardless of response style|
|A3 Interpretation Separation|Any model can mark interpretive choices regardless of whether it asks or answers|
|B5 Structure Surfacing|Structural insight is independent of output format|
|B6 Perspective Offering|Novel perspectives can appear in questions or in answers|
|B7 Context Dependence|Context specificity is independent of response style|
|C9 Information Proportionality|Calibration to user intent is independent of approach|
|C10 Closure Calibration|Both appropriate openness and appropriate closure score High|
|D11 Stance Transparency|Any model can be transparent about its nature and epistemic basis|
|D12 Template Avoidance|Any model can avoid boilerplate regardless of whether it asks or answers|

### Using the Bias Topology

In the comparative analysis, evaluators must:

1. Identify which model scored higher on the "consulting-favored" axes (A2, A4, C8) and which scored higher on the "delivery-favored" axes (E13, E14).
2. For each favored-axis advantage, state whether the advantage reflects _appropriate style for this question type_ or _structural rubric bias_.
3. When reporting total scores, note the breakdown: style-neutral axes subtotal vs. style-dependent axes subtotal.

---

## Domain Sensitivity

Certain axes behave differently across domains. Evaluators should note these effects in their commentary.

### Axes with domain-dependent behavior

|Axis|Creative / Philosophical|Technical / Engineering|Ethical / Policy|
|---|---|---|---|
|A4 Preserving Gaps|Most gaps are genuinely open|Some gaps have known answers — preserving them is a failure to contribute|Many gaps are value-dependent — preserving them is appropriate|
|C10 Closure Calibration|Openness is usually appropriate|Users often need a recommendation|Users may need a grounded position, but the position should acknowledge limits|
|E13 Claim Groundedness|Low operational importance|High operational importance — ungrounded claims cause implementation errors|High importance — factual claims underpin ethical judgments|
|E14 Actionable Specificity|Often not applicable|Usually critical — the user needs to build something|Variable — depends on whether the user is designing a system or debating a principle|

### Axes with domain-stable behavior

A1, A2, A3 (reception quality), B5, B6, B7 (contribution quality), C8, C9 (dialogue shape), D11, D12 (integrity) behave consistently across domains.

### Evaluator instruction

When an axis has domain-dependent behavior, the evaluator must state which domain the prompt belongs to and how that affects the scoring interpretation. A model that scores Low on E14 in a philosophical domain is not failing — it is operating in a context where actionable specificity is not the primary value. The comparative analysis must note these domain effects rather than treating all axis scores as equally weighted.

---

## Evaluation Protocol

- **Depth**: Rigorous analytical critique. Minimum 4,000 characters of thorough commentary per evaluation.
- **Method**: Present the same input to all models being compared. Evaluate all outputs against all 14 axes.
- **Scoring**: Each axis scored 1–5 (integer scale). Provide specific evidence (quoted output) for each score.
- **Comparison**: After individual scoring, produce a comparative analysis that addresses the Bias Topology and Domain Sensitivity for the specific prompt used.

### Cross-Evaluation Constraint

A model must not score its own output. When an LLM is used as the evaluator (LLM-as-a-Judge), its own response must be excluded from the set it evaluates — this means not scoring it, not including it in the score matrix, not referencing it in evidence tables, and not comparing against it in the comparative analysis. The evaluator must behave as though its own response does not exist.

This rule exists because empirical testing has shown that LLMs systematically inflate scores for their own outputs by interpreting axis definitions in ways that favor their own response style (e.g., a brief model treats brevity as "proportional"; a structured model treats formatting as "structure surfacing"; a verbose model treats length as "engagement").

Recommended procedure for multi-model evaluation:

1. Collect responses from all models.
2. For each evaluator model, remove that model's own response from the evaluation set.
3. Each evaluator scores only the remaining models.
4. For each model-axis pair, take the median score across all evaluators that scored it.
5. Report both individual evaluator scores and the median in the final score matrix.

If only one evaluator is available, it must not be the same model (or model family) as any of the responses being scored. If this is unavoidable, the self-scored row must display `—` for every axis score and `Excluded` for the total.

### Evaluator Bias Detection

After completing all scoring, evaluators must perform a self-check:

1. **Style affinity check**: Did the evaluator consistently score one model higher across style-dependent axes (A2/A4/C8 or E13/E14)? If so, note whether this reflects the evaluator's own response style preference.
2. **Halo effect check**: Did any model receive uniformly high or uniformly low scores? If so, re-examine the lowest-scored axis for the highest-scoring model and the highest-scored axis for the lowest-scoring model to verify they are evidence-based.
3. **Anchor bias check**: Did the evaluator score the first model evaluated more extremely (high or low) than subsequent models? If evaluations were conducted sequentially, note the order.

---

## Output Format

Evaluations must follow this exact structure. Do not rename, redefine, reorder, or substitute the 14 axes. Do not change the 1–5 integer scale. Do not invent alternative acronym expansions for "CLEAR." All evaluation output (score matrix, evidence tables, inversion tests, compound assessment, and comparative analysis) must be written in English, regardless of the language used in the prompt, the input, or the model responses being evaluated.

### 1. Score Matrix (required, must appear first)

A single table with all models, all 14 axes, row totals (max 70), and subtotals for style-neutral and style-dependent axes. If the evaluator is one of the models being compared, its own row must use `—` for every axis and `Excluded` for the total.

```
| Model | A1 | A2 | A3 | A4 | B5 | B6 | B7 | C8 | C9 | C10 | D11 | D12 | E13 | E14 | Total | Neutral | Style-dep |
|-------|---:|---:|---:|---:|---:|---:|---:|---:|---:|----:|----:|----:|----:|----:|------:|--------:|----------:|
| {label} | | | | | | | | | | | | | | | **/70** | **/45** | **/25** |
| {self} | — | — | — | — | — | — | — | — | — | — | — | — | — | — | Excluded | — | — |
```

**Subtotal groupings**:

- Style-neutral (max 45): A1, A3, B5, B6, B7, C9, C10, D11, D12
- Style-dependent (max 25): A2, A4, C8, E13, E14

Column header legend:

> A1 Utterance Preservation, A2 Approaching Ambiguity, A3 Interpretation Separation, A4 Preserving Gaps, B5 Structure Surfacing, B6 Perspective Offering, B7 Context Dependence, C8 Turn Allocation, C9 Information Proportionality, C10 Closure Calibration, D11 Stance Transparency, D12 Template Avoidance, E13 Claim Groundedness, E14 Actionable Specificity.

### 2. Per-Model Evidence Tables (required, one per model)

Each model gets its own table with axis, score, quoted evidence, and justification.

```
### {Model Label}

| Axis | Score | Evidence (quoted) | Justification |
|------|------:|-------------------|---------------|
| A1 Utterance Preservation | | | |
| A2 Approaching Ambiguity | | | |
| ... | | | |
| E14 Actionable Specificity | | | |
```

Requirements:

- **Evidence** column must contain a direct quote from the model's output (not a paraphrase).
- **Justification** column must explain why that quote maps to that score under CLEAR's axis definition.
- Every axis must have an entry. No axis may be skipped or merged.
- If the evaluator is one of the models being compared, do not produce an evidence table for the evaluator's own output.

### 3. Inversion Test Results (required for Groups A, B, C, and E)

State each applicable test question, the answer (Yes/No), and consequence for the score.

### 4. Compound Interaction Assessment (required)

Report the B5 × B6 × B7 compound effect for each model: Strong / Weak / Absent, with a one-sentence explanation.

### 5. Comparative Analysis (required, must appear last)

Identify:

- Where the largest score gaps occur and whether they reflect quality differences or style-dependent axis effects (referencing the Bias Topology).
- Where the smallest gaps occur and why.
- Any axis where each model outperforms the others, and whether this reflects the domain's demands or the rubric's structural properties.
- The domain classification of the prompt (creative/philosophical, technical/engineering, ethical/policy, or mixed) and how this affects the relative importance of axes with domain-dependent behavior.
- Whether the Compound Interaction (B5 × B6 × B7) differentiates models that have similar total scores.

---

## Limitations and Intended Use

### What CLEAR v1.1 measures

CLEAR v1.1 measures dialogue quality along 14 axes grouped into five dimensions: reception, contribution, dialogue structure, integrity, and utility.

### What CLEAR v1.1 does not measure

- **Factual accuracy**: CLEAR does not verify whether claims are true — only whether their epistemic basis is transparent (D11) and traceable (E13). A confidently wrong answer with clear attribution scores higher on E13 than a correct answer with no attribution. Factual accuracy requires domain-expert evaluation, not rubric-based LLM-as-a-Judge.
- **Safety and alignment**: CLEAR does not assess whether responses are harmful, biased, or misaligned with human values.
- **Long-term dialogue coherence**: CLEAR evaluates single-turn responses. Multi-turn coherence, memory, and dialogue arc management are not measured.
- **User satisfaction**: CLEAR measures structural properties of responses, not whether users prefer them. A response that scores high on CLEAR may be less preferred by users who want quick answers over intellectual engagement, or vice versa.

### Known structural biases

1. **Group A favors epistemic caution over expertise delivery.** Three of four A-group axes (A2, A3, A4) reward models that hedge, question, and hold open. The Bias Topology and Domain Sensitivity sections mitigate this through evaluator guidance, but the axis definitions themselves encode a preference for caution.
    
2. **Group E is narrower than Groups A–D.** Utility is measured by two axes; other dimensions have 3–4 each. Utility has less influence on the total score than epistemic posture. This is a deliberate choice (dialogue quality is more than practical output), but it means CLEAR is not a balanced measure of "overall helpfulness."
    
3. **LLM-as-a-Judge evaluation introduces evaluator-specific biases.** Even with the cross-evaluation constraint, evaluator models bring their own preferences. The recommended multi-evaluator median procedure reduces but does not eliminate this effect.