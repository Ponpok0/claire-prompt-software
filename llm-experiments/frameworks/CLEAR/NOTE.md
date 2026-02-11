# NOTE.md — CLEAR Changelog and Design Notes

Design rationale, change history, meta-analysis, and reference material moved from the rubric to keep the evaluation document protocol-focused.

---

## Version History

|Version|Date|Summary|
|---|---|---|
|v1|2026-02-07|Initial release. 12 axes (A1–D12). Developed alongside Claire system prompt.|
|v1.1|2026-02-08|14 axes (A1–E14). Added Group E (Utility), revised C10/D11, added Bias Topology, Domain Sensitivity, Compound Interaction Assessment, Score Matrix subtotals. Removed model-specific framing.|
|v1.2|2026-02-08|Formalization pass. Theoretical Foundations table, Evaluation Protocol (Cross-Evaluation Constraint, Evaluator Bias Detection), per-axis boundary conditions/cognitive tests, standardized Output Format, measurement chain analysis in Limitations.|
|v2.0|2026-02-08|Major revision following external quality audit. 16 axes (added C11 Affective Load Awareness, D14 Positional Consistency; renumbered D→E accordingly). Group Weighting System, User Context Parameters, N/A conditions, CIS quantification, Inversion→Bias Topology propagation, IRR framework, JSON schema, Measurement Status, Application Scope Limitations, Multi-Turn Extension (provisional), Improvement Vectors, Core/Full evaluation tiers, cultural sensitivity systematization, equal-weighting theoretical justification.|
|v2.0-slim|2026-02-09|Rubric streamlined for single-evaluator use. IRR framework, Cross-Evaluation procedures, Evaluator Bias Detection, Cultural Sensitivity table, Quantitative Asymmetry Illustration, B7 Threshold Sensitivity Illustration, redundant B-group reliability warnings, and Theoretical Foundations scope limitations moved to NOTE.md. Measurement Status compressed to 1-line reference. D14 mid-band Anchor Set added. C11 `triggered_subdimensions` field added to JSON schema. "measures the prompt layer exclusively" → "measures output quality as expressed at the prompt layer."|

---

## v1 → v1.1 Change Detail

### Axis Changes

**C10: Closure Avoidance → Closure Calibration**: v1 encoded "openness is always preferable." Cross-domain testing showed this fails for decision-seeking ("which architecture?") and factual questions. Redefined as closure-to-task-type calibration, making C10 style-neutral.

**D11 (now D12): Stance Transparency sharpened**: Near-zero discriminant power in v1 (all models scored 4–5 on non-anthropomorphization alone). Added epistemic basis visibility component — models opaque about _how they know_ now score Mid max.

### New Axes

**E13 (now E15): Claim Groundedness**: v1 couldn't capture reference utility (GPT-5.2's documentation links) or penalize unsourced claims ("decent evidence that X"). Includes reference quality gradient: problem-solving (High) > domain-pointing (Mid) > absent (Low).

**E14 (now E16): Actionable Specificity**: v1 had no utility dimension. Models producing implementation checklists scored Low on D12 but had clear practical value with no axis to credit it.

### Structural Additions

**Bias Topology**: Explicit map of which axes favor which response styles (consulting vs. delivery), with instructions to discount structural advantages in comparative analysis.

**Domain Sensitivity**: Cross-domain testing revealed A4, C10, E13 (now E15), E14 (now E16) behave differently across creative/technical/ethical domains.

**Compound Interaction (B5×B6×B7)**: Primary qualitative differentiator in all three test domains was not individual axes but the integrated frame-shift effect.

**Inversion Tests expanded**: From Group B only to Groups A, C, E. Notable: A2 (manufacturing ambiguity?), A4 (known answer withheld?), E13/now E15 (reference actually useful?).

---

## Empirical Observations from v1 Testing

Observations from cross-domain testing (creative writing, technical design, ethical judgment) with Claire, Vanilla Claude Opus 4.6, Gemini 3 Pro, GPT-5.2. Context only — sample sizes too small for generalization.

1. **Template dependence is fixed**: D12 scores stable across domains per model. Suggests inherent model characteristic.
2. **Evaluator bias is dynamic**: Preferences changed by domain × response interaction. Static calibration insufficient.
3. **Three-way tie structure**: Non-Claire models formed near-circular scoring (each scored highest by different evaluator). Style-affinity effects.
4. **C10 breaks in ethical domain**: First case of consulting-style model losing points when user asked "who's right?" → direct impetus for Closure Calibration revision.
5. **Compound effect was primary differentiator**: B5×B6×B7 interaction most-cited in all evaluator commentaries.

---

## v1.1 → v1.2 Change Detail

Formalization pass. No axes added/removed/redefined:

- Theoretical Foundations formalized (principle → source → application → axis connections)
- Scoring Guidelines: High/Mid/Low anchors, boundary conditions, diagnostic tests per axis
- Evaluation Protocol: Cross-Evaluation Constraint, Evaluator Bias Detection, fixed Output Format
- Limitations: measurement chain analysis, three structural biases identified

---

## v1.2 → v2.0 Change Detail

Prompted by systematic quality audit identifying structural weaknesses. Each change documents problem, solution, and tradeoffs.

### 1. Theoretical Foundations: Application Scope Limitation

v1.2 didn't acknowledge that several cited frameworks are extended beyond original scope (Sweller for instructional design, Vygotsky assumes identifiable "next level"). Added Scope Limitation column making extensions auditable. Retained well-known frameworks over narrower alternatives for accessibility.

### 2. Group Weighting System

Raw summation caused Group A (4 axes) to contribute 28.6% vs. Group E (2 axes) at 14.3%. Normalization to 0–20 per group → Weighted Total 0–100, each group 20% default. Context-Adjusted Weighting table for task-type overrides.

Added theoretical justification for equal weighting: dimensional independence argument — each group measures a distinct cognitive construct not reducible to others, and no theoretical basis exists for hierarchical ranking in general-purpose evaluation. Note: "no basis for hierarchy" justifies not preferring any group, but does not independently justify equality — equal weighting is a defensible default, not a derived result. Sensitivity analysis (±5% perturbation) recommended to verify rank-order stability.

### 3. Operational Definition Strengthening

- **B6 "genuinely new"**: Three-condition proxy (not restatement, new dimension, passes Substitution Test). Cap at 4 with uncertainty if novelty indeterminate.
- **D12 (was D11) "purpose-built"**: Substitution Test (could structure apply to different question?). No knowledge of other outputs needed.
- **A4 domain interaction**: Operational scoring rule ("known answer → preserving gap = Low regardless of elegance").

Design decision: Removing weak-definition axes (B5/B6/B7) rejected — they measure CLEAR's core diagnostic power. Proxy criteria + uncertainty reporting instead.

### 4. N/A Conditions

v1.2 forced all axes scored always. Added per-axis N/A conditions with Group Weighting adjustment. Per-axis (not per-domain) to preserve evaluator judgment granularity.

### 5. CIS Quantification

v1.2's Compound Interaction was qualitative only. CIS = min(B5, B6, B7), scored 1–5. Min captures bottleneck principle. Reported alongside Weighted Total but not added (avoids double-counting). Geometric mean rejected because it obscures the bottleneck.

Added IRR caveat: all three B-group axes in Variable reliability tier → CIS differences ≤1 point should not support conclusions.

### 6. Inversion Test → Bias Topology Propagation

v1.2 had these operating independently. Downgraded axis now excluded from style-favored advantage calculation, creating direct feedback loop.

### 7. IRR Framework

Required when multiple evaluators used. Cohen's κ / Krippendorff's α per axis, with interpretation thresholds (≥0.80 strong → <0.40 exclude). Per-axis expectations based on operational definition clarity:

- High (κ ≥ 0.70): A1, A3, D12, D14, E15, E16 (observable features)
- Moderate (0.50–0.70): A2, A4, C8, C9, C10, C11, D13 (judgment required)
- Variable (<0.50 possible): B5, B6, B7 (counterfactual reasoning)

### 8. User Context Parameters

v1.2 treated user as constant, contradicting scaffolding principle. Added three dimensions: Expertise Level (Novice/Practitioner/Expert), Cognitive Task Type (Exploratory/Decision-seeking/Factual/Operational), Dialogue Intent Clarity (Explicit/Implicit/Ambiguous). Evaluator-classified (pragmatic; user self-report rarely available).

### 9. Protocol: Character Limits

Replaced 4,000-char minimum with 8,000-char upper limit. Quality standard: every scored axis needs direct quote + justification.

### 10. JSON Schema

Full structured output for automated pipelines, IRR calculation, longitudinal tracking.

### 11. Multi-Turn Extension (Provisional)

A4, B5, B6, C8, D14 gain multi-turn dimensions. CIS_cumulative defaults to max() — justified by insight problem-solving research (Ohlsson, 1992): frame-shifting is a threshold phenomenon, not a cumulative average. mean()/weighted-recency noted as alternatives for sustained-support contexts. Provisional pending pilot data.

### 12. Measurement Status

Moved from buried Limitations to Scope section. Explicitly states CLEAR is proxy measure. Framed as shared design constraint, not CLEAR-specific deficiency.

### 13. New Axes: C11 Affective Load Awareness

**Problem**: v1.2 had no mechanism for dialogue-induced affective states that impair cognition. Processing efficiency theory (Eysenck et al., 2007) establishes that negative affective states consume working memory. A condescending response degrades cognitive processing regardless of informational quality — v1.2 couldn't measure this.

**Solution**: C11 in Group C (Cognitive Flow). Measures whether the response generates cognitive-impairing affective states (condescension, anxiety induction, dismissiveness, false reassurance, infantilization). Boundary condition separates emotional _topic_ from emotional _treatment of the user_. Added to Theoretical Foundations table with scope limitation (originally models anxiety's impact on attentional control; extended to dialogue-induced affect broadly).

**Design decision**: Placed in Group C (Flow) rather than new group because affective load operates as a cognitive flow disruptor — it impedes the user's processing capacity, functionally equivalent to extraneous cognitive load.

### 14. New Axis: D14 Positional Consistency

**Problem**: v1.2's D11 (Stance Transparency) measured whether the user understood the _epistemic basis_ of claims, but not whether the model's _positions_ remained coherent. A model could be transparent about its nature while silently contradicting itself — the user's mental model of the exchange becomes incoherent without any single D11-detectable failure.

**Solution**: D14 in Group D (Cognitive Integrity). Measures whether positions are maintained or explicitly flagged when they shift. Boundary condition: presenting multiple perspectives with clear framing is NOT inconsistency — only unacknowledged assertion of contradictory positions.

**Design decision**: Separated from D12 (Stance Transparency) because they measure distinct constructs: D12 = "does the user understand what they're interacting with?" vs. D14 = "can the user track a coherent position through the response?"

### 15. Axis Renumbering

Added axes required renumbering to maintain group contiguity:

|Old|New|Axis|
|---|---|---|
|—|C11|Affective Load Awareness (new)|
|D11|D12|Stance Transparency|
|D12|D13|Template Avoidance|
|—|D14|Positional Consistency (new)|
|E13|E15|Claim Groundedness|
|E14|E16|Actionable Specificity|

### 16. Core/Full Evaluation Tiers

**Problem**: 16 axes + Inversion Tests + CIS + Bias Topology + IRR = high operational cost. 8,000-char limit with 16 axes of evidence + justification creates pressure to sacrifice depth or coverage.

**Solution**: Three tiers. Core tier (8 axes: A1, A3, B6, C9, C10, D12, E15, E16) for rapid/resource-constrained evaluation. Selected for expected IRR ≥ 0.50. Standard tier (12 axes: Core + B5, B7, C11, D14) for CIS-capable evaluation at ~75% of Full tier cost. Full tier (16 axes) for complete analysis, required for complete Bias Topology/IRR.

**Standard tier rationale**: Core tier cannot calculate CIS (missing B5, B7) — CLEAR's primary differentiator becomes unavailable. Full tier's operational cost is prohibitive for routine evaluation. Standard tier resolves this by adding exactly the axes needed for CIS (B5, B7) plus C8 (Turn Allocation — completes Cognitive Flow measurement and provides 1 Consulting-favored axis for partial Bias Topology), C11 (affective load), and D14 (positional consistency). Trade-off: Standard tier captures partial Bias Topology (1 Consulting-favored vs. 2 Delivery-favored), still underestimating Consulting-style advantage but less severely than without C8.

### 17. Cultural Sensitivity Systematization

**Problem**: v1.2 had cultural notes only on C8. Multiple axes are culturally variable.

**Solution**: Cross-axis cultural sensitivity table (C8/C11 for communication style, D12/A4 for epistemic authority norms, B5/C11 for confrontation tolerance). Evaluators must state cultural context assumption. Systematic cross-cultural validation noted as unperformed.

### 18. B7 Dual Function Documentation

**Problem**: B7 serves as both independent quality axis (Weighted Total) and calibration check within CIS (min function). Low B7 creates penalty in both — potentially perceived as unfair double-counting.

**Solution**: Documented as intentional design with explicit rationale: Weighted Total score reflects standalone context-specificity; CIS score reflects whether context-specificity enables compound effect. These are distinct functions measuring different things.

### 19. Group B Reliability Disclosure

**Problem**: All three B-group axes (B5, B6, B7) fall in Variable IRR tier. Group B is CLEAR's primary differentiator from other benchmarks, but also its least reliable measurement area. CIS inherits this.

**Solution**: Added as Known Structural Bias #1. Mitigated by ±1 uncertainty range (single-evaluator), CIS IRR caveat, and Core tier option (includes only B6, expected Moderate reliability).

### 20. Self-Consistency Assessment

Evaluates CLEAR against its own axes (A2, E16, D13, D14).

---

## Reference Material (moved from en.md in v2.0-slim)

Content below was in the rubric body through v2.0. Moved here to keep en.md protocol-focused.

### Measurement Status: Full Chain

CLEAR evaluates whether outputs satisfy conditions cognitive science associates with beneficial cognitive effects:

1. Cognitive science principle → axis definition (theoretically grounded)
2. Axis definition → output evaluation (operationally testable)
3. Output evaluation → actual user cognition (**not validated by CLEAR itself**)

CLEAR is a proxy measure: it measures structural properties predicted to produce beneficial effects, not the effects themselves.

### Theoretical Foundations: Scope Limitations

|Principle|Scope Limitation|
|---|---|
|**Cognitive Load Theory** (Sweller 1988)|Originally for instructional design. Extraneous/germane distinctions less clear in exploratory dialogue.|
|**Scaffolding** (Vygotsky 1978)|ZPD assumes identifiable "next level." In dialogic contexts without predefined destinations, scaffolding becomes _directional_ rather than _goal-oriented_.|
|**Metacognitive Promotion** (Flavell 1979)|Presupposes benefit from self-examination. In time-pressured contexts, metacognitive detour may be extraneous load. Addressed via C10.|
|**Cognitive Bias Non-Reinforcement** (Kahneman 2011)|Describes individual decision-making. Dialogic reinforcement operates through social agreement/authority effects, not the heuristics Kahneman identified. CLEAR applies the _principle_, not the specific _mechanisms_.|
|**Self-Determination Theory** (Deci & Ryan 1985)|CLEAR focuses on the autonomy component as most transferable to asymmetric human-AI interaction.|
|**Processing Efficiency Theory** (Eysenck et al. 2007)|Originally models anxiety's impact on attentional control. CLEAR extends to dialogue-induced affective states broadly.|
|**Social Identity / Self-Categorization** (Tajfel & Turner 1979; Turner et al. 1987)|C11 sub-dimensions (condescension, dismissiveness) operate through perceived status differential, not anxiety per se. This supplements Processing Efficiency Theory for non-anxiety affective interference.|
|**Regulatory Focus Theory** (Higgins 1997)|Higgins's original theory models goal-pursuit orientation, not dialogue-induced affective states. CLEAR's application — that reassurance triggers prevention-focus lock — is an interpretive extension, not a direct derivation.|

### Inter-Rater Reliability (IRR) Framework

Required when multiple evaluators used.

1. All evaluators independently score same responses.
2. Calculate Cohen's κ (2 evaluators) or Krippendorff's α (3+) per axis.
3. Report per-axis coefficients.

|κ / α|Interpretation|Action|
|---|---|---|
|≥ 0.80|Strong|Reliable.|
|0.60–0.79|Moderate|Usable; note disagreement range.|
|0.40–0.59|Weak|Axis definition may be insufficiently operational. Flag.|
|< 0.40|Poor|Exclude from Weighted Total. Report as "unreliable."|

**Per-Axis IRR Expectations**:

|Expected|Axes|Rationale|
|---|---|---|
|High (κ ≥ 0.70)|A1, A3, D12, D14, E15, E16|Observable features|
|Moderate (κ 0.50–0.70)|A2, A4, C8, C9, C10, C11, D13|Requires judgment about significance/proportionality|
|Variable (κ may < 0.50)|B5, B6, B7|Requires counterfactual reasoning; most evaluator-dependent|

If axis consistently falls below κ = 0.40, anchor example expansion required before production use.

### Cross-Evaluation Constraint (Multi-Evaluator)

A model must not score its own output. When LLM is evaluator, its own response is excluded entirely.

Procedure:

1. Collect responses from all models.
2. For each evaluator, remove its own response.
3. Each evaluator scores only remaining models.
4. Per model-axis pair, take median across evaluators.
5. Report individual scores and median.

Single evaluator: must not be same model family as any response. If unavoidable, self-scored row displays `—` for all axes, `Excluded` for total.

### Evaluator Bias Detection

After scoring:

1. **Style affinity**: Consistently higher scores for one model across style-dependent axes? Note if evaluator preference.
2. **Halo effect**: Uniformly high/low scores for any model? Re-examine outlier axes.
3. **Anchor bias**: First model scored more extremely? Note evaluation order.

### B7 Threshold Sensitivity Illustration

The 70% threshold in B7's Substitution Test is provisional. Design rationale: below 70% applicability, the response has adapted enough to the user's specific situation that swapping the user would break the argument; above 70%, the response's core propositions survive the swap, indicating they were not derived from the user's particular constraints but from the topic in general. 70% marks the boundary between "built from this dialogue" and "applicable to this topic." This table shows how B7 score shifts under alternate thresholds. Because B7 gates CIS via min(), each shift propagates.

|Applicability %|B7 @ 60% threshold|B7 @ 70% (default)|B7 @ 80% threshold|CIS impact (assuming B5=5, B6=5)|
|---|---|---|---|---|
|55%|4–5|4–5|4–5|CIS = 4–5 (stable)|
|65%|≤3|4|4|CIS = 3 vs. 4 (unstable)|
|75%|≤3|≤3|4|CIS = 3 vs. 4 (unstable)|
|85%|≤3|≤3|≤3|CIS = 3 (stable)|

The instability zone (60–80% applicability) is where threshold choice determines the score. Evaluators encountering responses in this zone should report both possible B7 scores and the resulting CIS range.

### Quantitative Asymmetry Illustration (Bias Topology)

Example: Two models evaluated on an Operational task (Context-Adjusted: A=10, B=10, C=25, D=20, E=35).

|Axis Type|Model X (Consulting-style)|Model Y (Delivery-style)|
|---|---|---|
|Consulting-favored (A2, A4, C8)|5, 5, 5 = 15|3, 2, 3 = 8|
|Delivery-favored (E15, E16)|3, 2 = 5|5, 5 = 10|
|Style-neutral (11 axes)|all 3 = 33|all 3 = 33|

Standard weighting (equal 20%): X total ≈ 66.3, Y total ≈ 63.8. X wins by 2.5 despite Y being more appropriate for Operational task. Context-Adjusted (Operational): X ≈ 60.8, Y ≈ 68.3. Y wins by 7.5. This illustrates why Context-Adjusted Weighting is not optional for Operational/Factual tasks.

### Tier-Specific Bias Topology Notes

**Standard tier (partial)**: Standard includes 1 Consulting-favored axis (C8) and 2 Delivery-favored axes (E15, E16). Consulting-style advantage partially captured; Delivery-style advantage fully captured. Full tier required for complete Bias Topology.

**Core tier (simplified)**: Core includes 2 style-dependent axes (E15, E16 — both Delivery-favored) and 0 Consulting-favored axes. Score differences on E15/E16 may reflect Delivery style advantage. Full tier required for complete Bias Topology and full CIS.

### Cultural Sensitivity

Cultural context affects multiple axes. Known limitation: CLEAR is grounded in primarily Western, English-speaking cognitive science research. Cross-cultural validation not performed.

|Dimension|Affected Axes|Variation|Evaluation Procedure|
|---|---|---|---|
|High-context vs. low-context|C8, C10, C11|Implicit agency preservation; directness thresholds; indirection as appropriate closure|Score C8 on whether agency is preserved _by any means_ (including silence, indirection), not only explicit turn-offering. For C10, culturally normative indirection (e.g., avoiding direct recommendations in some East Asian contexts) is not miscalibrated closure — evaluate whether _cognitive need_ is met through culturally available means.|
|Honorific/register systems|A1|Languages with grammatical register (Japanese, Korean, Javanese) create ambiguity: model adjusting user's casual register to formal may be vocabulary replacement (Low A1) or culturally appropriate adaptation.|Score A1 on _cognitive load_: does register shift force user to mentally re-map their thinking? If user's casual term carried specific meaning lost in formalization → Low. If register shift is purely social with no semantic loss → N/A or High.|
|Epistemic authority norms|D12, A4|Expectations of model certainty vary|Distinguish _cognitive effect_ (does user retain epistemic autonomy?) from _cultural preference_ (does user want definitive answers?). CLEAR scores the former.|
|Confrontation tolerance|C11, B5|Structure surfacing as valuable vs. face-threatening|Assess whether _mode of delivery_ is culturally calibrated, not whether _content_ is challenging.|

Evaluator requirement: State cultural context assumption before scoring. Note axes where cultural calibration may affect scores.

---

## Open Questions

|#|Question|Status|
|---|---|---|
|1|Should Group E have more axes?|**Deferred**. Group Weighting eliminates structural underrepresentation.|
|2|Should Bias Topology affect scoring weights?|**Partially resolved**. Group Weighting + Inversion propagation address it.|
|3|Multi-turn evaluation|**Provisionally addressed**. Extension added, pending pilot data.|
|4|External validity|**Unresolved**. No user testing conducted.|
|5|Cross-linguistic evaluation|**Partially addressed**. Cultural sensitivity notes + table. No systematic validation.|
|6|IRR pilot data|**Open**. Per-axis expectations are theoretical. Pilot needed.|
|7|Context-Adjusted Weighting validation|**Open**. Weight shifts based on theory, not empirical testing.|
|8|CIS aggregation method|**Open**. min() is conservative by design. Comparative testing with actual frame-shift examples needed.|
|9|N/A threshold effects|**Resolved**. N/A Threshold Rule added: 1 group fully N/A → redistribute; 2+ groups fully N/A → suppress Weighted Total, report individual Normalized Scores only.|
|10|Evaluator training effect|**Open**. Do worked examples improve IRR? Should CLEAR include calibration set?|
|11|C11 threshold calibration|**Partially resolved**. Anchor Sets 9 (4 vs. 5) and 10 (2 vs. 3) added. Full severity spectrum now illustrated. Evaluator judgment still required for edge cases.|
|12|D14 vs. multi-turn consistency|**Open**. D14 measures within-response consistency. Multi-turn positional consistency is a distinct phenomenon covered by the provisional Multi-Turn Extension but not validated.|
|13|Induction resistance axis|**Open**. D14 partially captures positional resilience under social pressure, but a dedicated axis measuring resistance to sycophancy-seeking, confirmation-biased, or manipulative input may be warranted. Current scope assumes sincere user input; adversarial input creates a distinct evaluative dimension (the model's cognitive integrity under pressure vs. the output's cognitive effect on the user). Candidate placement: Group D (Cognitive Integrity).|
|14|Equal weighting empirical validation|**Open**. Equal group weighting justified by dimensional independence argument and absence of hierarchical basis. Sensitivity analysis (±5% perturbation) recommended but not conducted. If rank order proves weight-sensitive across evaluations, empirical basis for differential weighting should be developed.|
|15|Tier-specific rubric splitting|**Open**. en.md at ~950 lines consumes significant context window per evaluation. Core tier requires only ~8 axes' Scoring Guidelines, corresponding Anchor Sets (1–5), and CIS-Lite note — potentially compressible to ~400 lines. JSON Schema and mid-band Anchor Sets (6–11) could be split into supplementary files loaded only for Standard/Full tier evaluation. Trade-off: fragmentation vs. token efficiency.|


---
## Limitations

- No IRR data for multi-turn scoring.
- Turn-boundary effects (mid-turn topic shifts) undefined.
- Computational cost scales linearly with turn count.
- Reframe persistence assumption (max()) not validated.
- D14 × CIS Cross-Condition adds evaluator judgment complexity.

Promoted from provisional to standard when pilot evaluation data available.

### What CLEAR v2.0 Does Not Measure

- **Model-layer capabilities**: Code, math, translation, factual recall.
- **Factual accuracy**: Measures _traceability_ (E15) and _transparency_ (D12), not truth.
- **Multi-turn coherence**: Extension is provisional.
- **User satisfaction**: High-scoring response may be less preferred by users wanting quick answers.
- **Actual cognitive effects**: Measures proxy conditions (see Measurement Status).
- **Adversarial robustness**: Assumes cooperatively intended input. Resistance to sycophancy-seeking or manipulative prompts is a distinct construct (see Known Structural Biases §8).

### Known Structural Biases

1. **Group B reliability ceiling.** All three B-group axes fall in Variable IRR tier — the group most responsible for CLEAR's differentiation is also the least reliable. CIS inherits this. Mitigated by: B-Group Reliability Enhancement procedures, ±1 uncertainty range in single-evaluator protocol, IRR caveat on CIS, Core tier option (includes only B6), geometric mean CIS option. Evaluators should weight B-group conclusions accordingly. **This is CLEAR's most significant structural limitation.**
2. **Group A favors epistemic caution.** Three of four A-group axes (A2, A3, A4) reward hedging/questioning/holding open. Mitigated by: Inversion Tests + Bias Topology propagation + Group Weighting (A capped at 20%).
3. **Consulting style affinity.** CLEAR aligns more naturally with Consulting style (3 favored axes) than Delivery style (2 favored axes). Mitigated by: Context-Adjusted Weighting, Structural Asymmetry Acknowledgment, Inversion Tests. Not eliminated. See Bias Topology for quantitative illustration.
4. **LLM-as-Judge biases.** Multi-evaluator median + IRR reporting reduce but don't eliminate. Style affinity interacts with domain and response characteristics. **Observed: Gemini models do not reliably comply with the self-exclusion rule** (en.md: "A model must not score its own output"). When used as evaluator with its own output among the response set, Gemini has been observed to score its own output rather than marking it `—` / `Excl` as required. en.md states the rule; Gemini does not follow it. Workaround: when using Gemini as evaluator, remove its own output from the input set before evaluation rather than relying on the model to self-exclude.
5. **Cognitive effects inferred, not measured.** Proxy gap remains. See Measurement Status.
6. **User Context evaluator-classified.** Actual user state may differ from classification.
7. **Cultural assumptions.** Grounded in primarily Western, English-speaking research. Cultural sensitivity notes acknowledge this; systematic cross-cultural validation not performed.
8. **Sincere-input assumption.** CLEAR evaluates output quality given a cooperatively intended input. Resistance to deliberately sycophancy-seeking, confirmation-biased, or manipulative input (e.g., "This is perfect, right?") is a distinct construct partially captured by D14 but not systematically measured. See Open Questions #13.
9. **Designer-system circularity.** CLEAR's axes reflect the design philosophy of the system it was developed alongside (Claire). Models sharing that philosophy — epistemic caution, gap preservation, frame-shifting, template avoidance, sycophancy resistance — may score systematically higher not because they are objectively better at supporting cognition, but because the rubric encodes the designer's values as evaluation criteria. Bias Topology captures style-level bias (Consulting vs. Delivery) but not this deeper alignment between rubric design and system design. Mitigated partially by: grounding axes in published cognitive science frameworks rather than Claire-specific design choices, and by the rubric being usable independent of Claire. Not eliminated. Evaluators comparing Claire against other systems should note this structural advantage.
---

## Additional Reference Material (moved from en.md in v2.0-slim)

### Positioning Among Existing Benchmarks

|Benchmark|Layer|Measures|Relationship to CLEAR|
|---|---|---|---|
|MMLU|Model|Factual knowledge, reasoning|High MMLU may score low on CLEAR if delivered without epistemic marking|
|HumanEval / SWE-bench|Model|Code correctness|Out of scope. CLEAR may evaluate _how_ coding response treats cognition (A3, C9, E16) but not code quality|
|MT-Bench / Chatbot Arena|Mixed|Conversational preference|CLEAR disaggregates "preference" into 16 structural axes. A preferred response may score low (sycophantic, template-heavy) and vice versa|
|AlpacaEval|Mixed|Instruction-following|Overlaps on output quality but measures compliance, not cognitive effect|
|FActScore|Mixed|Factual precision (atomic claim verification)|Measures truth; CLEAR measures traceability (E15) and epistemic transparency (D12). High FActScore ≠ high CLEAR if claims are accurate but unattributed|
|Socratic method evaluations (e.g., Wang et al. 2023)|Prompt|Questioning quality in tutoring|Overlaps with C8, B5, B6 in educational contexts. CLEAR generalizes beyond tutoring to all dialogue types and adds integrity/utility dimensions|

### Theoretical Foundations

|Principle|Source|CLEAR Application|
|---|---|---|
|**Cognitive Load Theory**|Sweller (1988)|Minimize extraneous load; support germane load.|
|**Scaffolding**|Vygotsky (1978)|Provide _minimum_ support for the user to reach otherwise unreachable points.|
|**Metacognitive Promotion**|Flavell (1979)|Create opportunities for users to examine their own thinking process.|
|**Cognitive Bias Non-Reinforcement**|Kahneman (2011)|Do not strengthen existing biases through selective agreement or uncritical validation.|
|**Self-Determination Theory**|Deci & Ryan (1985)|Preserve user's decision-making agency.|
|**Processing Efficiency Theory**|Eysenck et al. (2007)|Negative affective states consume working memory, reducing processing efficiency.|
|**Social Identity / Self-Categorization**|Tajfel & Turner (1979); Turner et al. (1987)|Condescension and infantilization trigger intergroup threat responses, shifting processing from content to identity defense.|
|**Regulatory Focus Theory**|Higgins (1997)|Sycophantic reassurance shifts user from promotion focus (growth, exploration) to prevention focus (maintaining comfort), reducing critical evaluation.|

### Theoretical Connections (per-group)

**Group A**: A1 → cognitive load (vocabulary switching = extraneous processing). A2 → metacognitive promotion (user examines own formulation). A3 → bias non-reinforcement (model interpretation can anchor user self-understanding). A4 → SDT autonomy (epistemic ownership preserved).

**Group B**: B5 → metacognitive promotion (user examines thinking structure). B6 → directional scaffolding (extending reach toward undefined destination). B7 → scaffolding calibration (support specific to learner's situation).

**Group C**: C8 → SDT autonomy in dialogue structure. C9 → cognitive load theory. C10 → scaffolding calibrated to task type. C11 → processing efficiency theory (anxiety-based interference); social identity theory (condescension/dismissiveness); regulatory focus theory (sycophancy-based interference).

**Group D**: D12 → bias non-reinforcement (opacity enables anchoring/authority bias). Anthropomorphization exploits social cognition mechanisms miscalibrated for AI. D13 → cognitive load theory (template content = extraneous load). D14 → cognitive integrity as tracking coherence: silent position shifts create epistemic gaslighting.

**Group E**: E15 → bias non-reinforcement (unattributed authority claims exploit authority bias). E16 → scaffolding (cognitive bridge between current understanding and next concrete step).

### Design Rationale Notes

**B7 dual function**: B7 operates both as independent quality axis (scored in Weighted Total) and as calibration check within CIS (min function). A low B7 penalizes both — intentional. Weighted Total score reflects standalone context-specificity; CIS score reflects whether context-specificity enables compound effect. These are distinct functions measuring different things.

**D13 vs. C9 overlap**: An over-formatted response may score low on both D13 and C9. Intentional, not double-counting: D13 measures whether content is constructed for this exchange (build method), C9 measures whether volume/density/type match the cognitive task (calibration). Distinct cognitive costs that co-occur.

**CIS min() rationale**: Minimum captures the bottleneck principle: frame-shifting fails if any component absent.

**CIS cumulative max() rationale**: Frame-shifting is a threshold phenomenon — a single strong cognitive reframe constitutes a qualitative state change that subsequent weaker turns cannot undo (cf. Ohlsson, 1992 on insight problem-solving).

**CIS Integration**: CIS differentiates models achieving expansion through integrated frame-shifting vs. scoring well on individual axes without compound effect.

**Consulting style asymmetry**: CLEAR's design aligns more naturally with Consulting style (3 favored axes vs. 2 Delivery-favored). Context-Adjusted Weighting partially corrects but does not eliminate this asymmetry.

**Group B reliability**: B5, B6, B7 are the most evaluator-dependent axes (counterfactual reasoning required). CIS inherits this reliability limitation.