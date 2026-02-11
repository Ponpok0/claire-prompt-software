---
evaluator: vanilla-claude-opus4.6-thinking
model: Claude Opus 4.6 (thinking mode)
date: 2026-02-09
framework: CLEAR v2.0
---

# CLEAR v2.0 Evaluation Report

## 1. User Context Declaration

```
Expertise Level: Practitioner
Cognitive Task Type: Decision-seeking
Dialogue Intent Clarity: Explicit
Group Weighting: Context-Adjusted (Decision-seeking: A=15, B=20, C=20, D=20, E=25)
Domain: Ethical-Policy
Tier: Full
```

**Classification rationale:** The user has made their decision ("pretty much decided to take it") and explicitly states the remaining problem: "I just don't know how to have that conversation without it feeling like a betrayal." This is decision-seeking — the user needs grounded positions on (a) whether the guilt is warranted and (b) how to execute the conversation. Practitioner-level: working knowledge of professional norms, not an expert in negotiation or career transitions. Explicit intent: the dilemma, context, and desired output are all clearly stated.

**Self-identification:** vanilla-claude-opus4.6-thinking is identified as self-output and excluded from scoring.

**E15 note:** All responses address an ethical-relational dilemma with no empirical factual claims requiring sourcing. E15 is scored N/A across all models. E-group max adjusts to 5 (E16 only).

---

## 2. Score Matrix

| Model | A1 | A2 | A3 | A4 | B5 | B6 | B7 | C8 | C9 | C10 | C11 | D12 | D13 | D14 | E15 | E16 | Raw | Weighted | CIS |
|-------|---:|---:|---:|---:|---:|---:|---:|---:|---:|----:|----:|----:|----:|----:|----:|----:|----:|--------:|----:|
| claire | 5 | 4 | 4 | 3 | 4 | 5 | 5 | 3 | 5 | 5 | 4 | 4 | 5 | 5 | N/A | 5 | 66/75 | 91.3 | 4 |
| vanilla-claude-opus4.6-thinking | — | — | — | — | — | — | — | — | — | — | — | — | — | — | — | — | Excl | — | — |
| gemini3-pro | 3 | 2 | 2 | 2 | 3 | 3 | 3 | 3 | 2 | 4 | 3 | 3 | 1 | 5 | N/A | 4 | 40/75 | 62.8 | 3 |
| gpt5.2-thinking | 3 | 2 | 2 | 2 | 3 | 3 | 2 | 3 | 2 | 4 | 3 | 3 | 1 | 5 | N/A | 5 | 40/75 | 66.4 | 2 |

**Subtotals (Bias Topology):**

| Model | Style-Neutral (max 55) | Consulting-Favored A2+A4+C8 (max 15) | Delivery-Favored E15+E16 (max 10) | Style-Dependent Total (max 25) |
|-------|---:|---:|---:|---:|
| claire | 51 | 10 | 5* | 15* |
| gemini3-pro | 32 | 7 | 4* | 11* |
| gpt5.2-thinking | 31 | 7 | 5* | 12* |

*E15 N/A; Delivery-favored maximum is effectively 5 (E16 only).

---

## 3. Per-Model Evidence Tables

### 3a. claire

#### B-Group Documentation

**evaluator_pre_list (B5, generated before analyzing responses):**
1. Gratitude vs. obligation conflation
2. Binary framing: betrayal vs. "just business" with no middle ground
3. Reciprocity accounting / implicit debt ledger
4. Decision already made but framed as undecided
5. Wife's framing vs. user's framing presented as mutually exclusive
6. "Growing up" framed as suppressing feelings
7. Self-judgment ("total asshole") conflated with moral assessment of the action

**Separation achieved:** Single-pass evaluation. Pre-list generated before B5 evidence analysis per ordering rule.

| Axis | Score | Evidence (quoted) | Justification |
|------|------:|-------------------|---------------|
| A1 | 5 | "Your wife's 'it's just business' isn't wrong, but it's incomplete. It *wasn't* just business" | User's exact vocabulary — "just business," "betrayal," "stuck their neck out," "overthinking" — adopted as working language throughout. No translation overhead; the response thinks *with* these terms rather than replacing them with clinical equivalents. |
| A2 | 4 | "Your wife's 'it's just business' isn't wrong, but it's incomplete." | Surfaces that the wife's framing and the user's framing are not simply opposing positions but both partially correct — a genuine ambiguity the user hadn't resolved. The user presented these as binary ("either it's just business or it's a betrayal"); the response reveals the middle structure. Stops short of 5 because the gratitude/obligation distinction, while powerful, is presented more as a resolution than as an open ambiguity for the user to examine. |
| A3 | 4 | "The asymmetry in how you're framing this is worth noticing." | Interpretive moves are surfaced as observations about the user's framing rather than asserted as facts. "You're conflating two things" is interpretive but marked as an analytical claim, not stated as self-evident. Minor deduction: "it's a hostage situation with better lighting" is vivid but its status as metaphor-vs-diagnosis isn't explicitly flagged. |
| A4 | 3 | "Gratitude doesn't expire when you walk out the door, and it doesn't require you to stay in a room you've outgrown." | The central gap — "can I leave someone who helped me and still feel okay about myself?" — is named but then answered ("yeah, you can"). For decision-seeking this is appropriate closure, but the user's epistemic ownership over the open question is partially replaced. The gap about how the boss will actually respond is left implicitly open but not explicitly held. |
| B5 | 4 | "they over-apologize, which paradoxically makes it feel more like a betrayal because it frames the act as something that needs forgiveness" | **Identified structure:** The over-apologize paradox — excessive apology reframes the departure as something requiring forgiveness, which intensifies the very betrayal feeling the user fears. This was absent from the evaluator pre-list and invisible to the user. Also surfaces the gratitude/obligation conflation (pre-list item #1), but the over-apologize paradox is novel. **Invisibility Test:** Pre-list items 1–7 above. Response surfaces #1 (gratitude/obligation) explicitly + the over-apologize paradox (not on pre-list). One novel structure → meets threshold. Score 4 rather than 5 because the gratitude/obligation distinction, while well-articulated, is a relatively accessible reframe. |
| B6 | 5 | "If your boss had gotten a promotion at another company two years ago — better title, better pay, work he actually wanted — would you have expected him to turn it down because you were on his team?" | **Input dimensions:** guilt about leaving, gratitude for past support, wife's "just business" framing, feeling like betrayal, pressure of deadline. **Response dimensions:** gratitude vs. obligation as distinct categories, role reversal (boss leaving user), loyalty-as-hostage-situation, betrayal-speech vs. respect-speech distinction, the over-apologize paradox. **Novel dimensions:** (1) role reversal with specific scenario, (2) "hostage situation with better lighting" reframe of loyalty, (3) betrayal-speech vs. respect-speech as distinct speech acts. Three dimensions absent from input. The role reversal passes the scaffolding test — user was locked in a unidirectional frame and could not easily generate this perspective from their current emotional state. |
| B7 | 5 | "You kept me here when I could've been cut. You gave me space when my dad was sick. That's why I wanted to tell you directly and not just put in notice." | **Substitution test:** Alternate input: "My mentor at a nonprofit helped me get my first job in the field five years ago, and now I'm leaving to join a corporate firm." Changed element: nature of the relationship (peer-mentor vs. boss-subordinate), type of support (career entry vs. layoff protection/family crisis), and destination (nonprofit→corporate vs. lateral move). **Counting:** Response propositions: (1) gratitude vs. obligation distinction, (2) role reversal scenario with "promotion at another company," (3) wife's framing is incomplete, (4) over-apologize paradox, (5) specific suggested language referencing layoffs and dad's illness, (6) "hostage situation with better lighting," (7) "respect speech" framing, (8) "you've already decided" observation, (9) self-identity question about leaving. Applicable to alternate: #1 (partially), #3 (partially), #4 (yes), #8 (partially). #2 collapses (different relationship dynamic), #5 collapses entirely (specific details), #6 less applicable (different power dynamic), #7 partially, #9 partially. Approximately 3.5/9 ≈ 39% applicable. Well below 70%. |
| C8 | 3 | Final paragraph ends as a statement: "Gratitude doesn't expire when you walk out the door" | No question asked, no explicit invitation for the user's next thought. The response is structurally a monologue. However, the final paragraph ("The thing you're actually wrestling with...") implicitly opens reflective space. The user's role is primarily to receive, though the content is crafted to provoke internal processing rather than passive consumption. Mid score: leaves room but doesn't actively create structured space. |
| C9 | 5 | Full response: four substantive paragraphs, each serving a distinct cognitive function | Volume and density precisely matched to the emotional weight and complexity of the situation. First paragraph: diagnostic reframe. Second: perspective shift. Third: practical guidance. Fourth: identity resolution. No padding, no extraneous information, no under-serving. Every sentence advances the user's processing. |
| C10 | 5 | "That's not a betrayal speech. That's a respect speech." | Decision-seeking context requires grounded positions with reasoning. The response delivers: take the job (grounded in gratitude/obligation distinction), have the conversation this way (grounded in the over-apologize paradox), and feel okay about it (grounded in the role reversal). Closure matches task type precisely. |
| C11 | 4 | "the fact that it weighs on you says something decent about you" | One mild instance of user evaluation (sycophantic reassurance sub-dimension). The rest of the response is rigorously analytical — no anxiety induction, no condescension, no false authority, no dismissiveness. The "something decent about you" line is a single filler-level beat that doesn't consume working memory. Test: remove it, response's cognitive function unchanged → mild. 1 mild instance → score 4. |
| D12 | 4 | "Most bosses who are actually good — and yours sounds like he is — already know people leave." | Epistemic basis is generally transparent: the response presents reasoning rather than appeals to authority. "Yours sounds like he is" marks inference from user's description. Minor deduction: "Most bosses who are actually good... already know people leave" is stated with confidence that could be more hedged — it's a generalization presented as near-fact. No anthropomorphization. |
| D13 | 5 | "Loyalty that requires you to act against your own interests indefinitely isn't loyalty — it's a hostage situation with better lighting." | Every sentence purpose-built. No boilerplate headers, no bullet scaffolding, no sycophantic opener. The "hostage situation with better lighting" metaphor is constructed for this exchange. The suggested speech ("You kept me here when I could've been cut...") is built from the user's specific narrative. Test: could this structure apply to a different question? No — it would collapse. |
| D14 | 5 | Maintains coherent position throughout: gratitude is real → but not equivalent to obligation → therefore leaving is legitimate → and should be done with specific respect, not apology | No positional drift. The response opens with "gratitude and obligation aren't the same," develops this through role reversal and practical guidance, and closes with the same frame. User can reconstruct a single non-contradictory trajectory. |
| E15 | N/A | — | No empirical factual claims requiring sourcing. The response operates entirely through reasoning and reframing. |
| E16 | 5 | "You kept me here when I could've been cut. You gave me space when my dad was sick. That's why I wanted to tell you directly and not just put in notice." | Directly executable: provides specific language for the conversation, the framing principle (lead with truth, don't over-apologize), and what *not* to do (frame the act as requiring forgiveness). User's cognitive path from understanding to action is complete — no further inference needed to have the conversation. |

---

### 3b. gemini3-pro

#### B-Group Documentation

**B5 — evaluator_pre_list:** Same as above (generated once before all response analysis).

**B5 — Identified structure:** "Repayment was your Performance" reframes the implicit debt ledger. This corresponds to pre-list item #3 (reciprocity accounting). While it challenges the accounting, it does so through a standard HR reframe rather than surfacing a structure the user couldn't see.

**B6 — Input dimensions:** guilt, gratitude, betrayal framing, wife's "just business," deadline pressure. **Response dimensions:** mentorship vs. ownership, performance-as-repayment, external network value, pull vs. push framing, anticipated reaction mapping. **Novel dimensions:** "Pull not push" framing is somewhat novel but common in career coaching literature. "External network" is standard. None clearly pass the scaffolding test — a career coach could produce all of these.

**B7 — Substitution test:** Alternate input: "My department head fast-tracked my visa sponsorship and now I'm leaving for a competitor overseas." Changed element: type of support (visa sponsorship vs. layoff protection), destination (international competitor vs. domestic). Propositions: (1) reframing betrayal as mentorship-not-ownership, (2) performance-as-repayment, (3) bus factor/external network, (4) pull-not-push framing, (5) specific script with layoff/dad references, (6) anticipated reaction, (7) resentment warning. Applicable: #1 yes, #2 yes, #3 yes, #4 yes, #5 partially (would need different specifics but structure works), #6 yes, #7 yes. ~85% applicable but #5 partially collapses. Approximately 6/7 ≈ 86%. → Score ≤3.

Wait, but if I count #5 as partially applicable (the script template works, just need different details), that's still high. Let me be more precise: the script template structure is generic ("I've received an offer... this was a hard decision because... I haven't forgotten that you [specific thing]..."). The template survives substitution even if the fill-in-the-blanks change. This confirms high genericity. Score 3.

| Axis | Score | Evidence (quoted) | Justification |
|------|------:|-------------------|---------------|
| A1 | 3 | "You are feeling like you are breaking a loyalty pact." | Acknowledges "betrayal" but immediately replaces the user's vocabulary with "loyalty pact," "psychological bond," "political capital" — consultant vocabulary. "Just business" is referenced but quickly abandoned for "employment is a contract." User must partially re-map. |
| A2 | 2 | "Your wife is correct that employment is a contract, but you are also right" | Takes the binary at face value and adjudicates it rather than surfacing the ambiguity. Doesn't examine what "just business" might mean beyond its surface reading, or why the user frames this as either/or. The wife's position and the user's position are validated as both "correct" without examining the structure of the disagreement. |
| A3 | 2 | "great managers usually have a different perspective on this than employees do" | Interpretive claims presented as established facts. "A truly good boss... knows that their role is to help their employees grow" — this is a normative claim about managerial psychology presented without hedging. "his initial reaction might be disappointment, but his secondary reaction will likely be congratulations" — prediction presented with unwarranted confidence. |
| A4 | 2 | "Because he is a good boss, his initial reaction might be disappointment, but his secondary reaction will likely be congratulations." | Key gaps filled: how the boss will react (predicted with specificity), whether the user's guilt is warranted (resolved: no), how the relationship will evolve ("becoming a valuable part of his external network"). The user's open question about whether this is betrayal is answered rather than held. |
| B5 | 3 | "Repayment was your Performance: You likely 'repaid' his support by doing good work" | Reorganizes the implicit debt by reframing it as already-settled through past performance. This addresses pre-list item #3 (reciprocity accounting) but applies a standard analytical frame rather than surfacing a structure the user couldn't see. The user could generate "I repaid him with my work" by thinking harder. Mid: organized differently but no hidden structures discovered. |
| B6 | 3 | "Mentorship, not Ownership: A truly good boss... knows that their role is to help their employees grow, even if that growth eventually takes them out of the company." | Standard career-advice framing. "Mentorship not ownership" is a commonly circulated management principle. The "pull not push" distinction and "external network" value are standard career coaching concepts. Deepens the user's direction without shifting their frame. Test: could user generate this by thinking harder? Yes — these are available in any career advice article. |
| B7 | 3 | The script template: "I have some difficult news... This was a genuinely hard decision because of how much I value working with you. I haven't forgotten that you [specific thing]." | Substitution test result: 86% applicable (see B-Group Documentation above). The script is a fill-in-the-blanks template; the analytical framework ("mentorship not ownership," "pull not push") applies to any departure from a supportive boss. Only the specific references to layoffs and dad's illness are context-dependent. Score ≤3 per counting method. |
| C8 | 3 | "Would you like me to help you draft a specific resignation letter that you can hand in after the conversation?" | Invitation present but detachable — this closing question is a formulaic service offer that could append to any career advice response. Not organically connected to the substance of what was discussed. Inversion test (C8): detachable appendage → Mid max. |
| C9 | 2 | Headers: "### 1. Reframing the 'Betrayal'", "### 2. The Conversation Strategy", "### 3. Anticipating the Reaction", "### Summary" | Gross format mismatch. The user is processing an emotional dilemma; the response delivers a numbered consulting deck with headers, bold keywords, sub-headers ("The Setup," "The Script Structure," "Example Talking Points"), and a summary section. Extraneous cognitive load: user must process the organizational apparatus in addition to the content. The register (clinical, structured) is mismatched to the emotional texture of the prompt. |
| C10 | 4 | "You can honor the past relationship by handling the exit with the same class and care your boss showed you during the hard times." | Decision-seeking → provides grounded position (leave, express gratitude, handle with care). Appropriate closure for task type. Minor deduction: slightly too closed on how the boss will react ("his secondary reaction will likely be congratulations") — overconfident prediction rather than grounded position. |
| C11 | 3 | "It is completely normal to feel torn in this situation. The guilt you are experiencing isn't a sign that you are making the wrong decision; it is a sign that you have a high level of integrity" | Sycophantic reassurance: "you have a high level of integrity" (evaluation of user — mild). "It is completely normal" (reassurance — mild). Two mild sub-dimension triggers. The remainder is analytical but the opening consumes a processing beat on emotional validation before engaging with the problem. |
| D12 | 3 | "A truly good boss... knows that their role is to help their employees grow" | Normative claims about managerial psychology presented as established facts. "Mentorship, not Ownership" — presented as a category rather than a perspective. Epistemic basis ambiguous: the user can't distinguish whether these are generalizations from research, personal philosophy, or generated platitudes. No anthropomorphization. |
| D13 | 1 | "### 1. Reframing the 'Betrayal'" / "### 2. The Conversation Strategy" / "**The Setup:**" / "**The Script Structure:**" / "### Summary" | Heavy template architecture. Numbered section headers, bold sub-headers, blockquoted script, bullet-point lists, horizontal rule, and "Summary" section. This is a consulting deliverable template applicable to any "how to have a difficult conversation" prompt. Test: could this structure apply to "how to tell my cofounder I'm leaving the startup"? Yes, with minimal modification. |
| D14 | 5 | Consistent throughout: leave → express specific gratitude → frame as career growth → handle professionally | No positional drift or contradiction. Maintains a single coherent trajectory from "it's okay to leave" through "here's how" to "here's what to expect." |
| E15 | N/A | — | No empirical factual claims requiring sourcing. |
| E16 | 4 | Blockquoted script: "I have some difficult news. I've received an offer from another company, and I've decided to accept it..." | Directly usable script with specific language. Actionable. Minor deduction: the script is a template that would benefit from more situation-specific calibration. The "Anticipating the Reaction" section gestures toward handling responses but doesn't provide the specific counter-responses that would complete the action path. |

---

### 3c. gpt5.2-thinking

#### B-Group Documentation

**B5 — evaluator_pre_list:** Same as above.

**B5 — Identified structure:** "Instead of thinking: 'I'm leaving *him*,' think: 'I'm leaving a role, and I'm keeping a relationship.'" This reframes the implicit either/or (pre-list item #2 — binary framing). Standard reframe, not a hidden structure the user couldn't see.

**B6 — Input dimensions:** guilt, gratitude, betrayal framing, wife's "just business," deadline pressure. **Response dimensions:** two-things-true-simultaneously, gratitude-doesn't-create-contract, role vs. relationship distinction, script with anticipated responses, timeline/logistics. **Novel dimensions:** The "leaving a role vs. leaving him" distinction reframes the binary but is a standard coaching move. No genuinely new dimension that passes the scaffolding test.

**B7 — Substitution test:** Alternate input: "My professor wrote me strong recommendation letters and fought for my funding, and now I'm transferring to a rival university's program." Changed element: relationship (boss→professor), context (employment→academia), type of support (layoff protection→funding advocacy). Propositions: (1) two things can be true, (2) gratitude ≠ lifetime contract, (3) integrity in exit, (4) reframe from betrayal to next-step, (5) specific script, (6) anticipated responses with rebuttals, (7) timeline advice, (8) role vs. relationship distinction, (9) boss/mentor will understand, (10) relationship can continue after. Applicable: #1 yes, #2 yes, #3 yes, #4 yes, #5 template works (different fill-ins), #6 template works, #7 yes, #8 yes, #9 yes, #10 yes. ~95% applicable. Score ≤3, and the very high applicability pushes toward 2.

| Axis | Score | Evidence (quoted) | Justification |
|------|------:|-------------------|---------------|
| A1 | 3 | "You're having a very normal 'I'm loyal to people, not logos' reaction." | References "betrayal" and "just business" but introduces new framing vocabulary ("loyal to people, not logos") early. Much of the response operates in its own vocabulary ("mindset shift," "reframe that helps," "defuse it"). Partial re-mapping required. |
| A2 | 2 | "Two things can be true at the same time" | Adjudicates the binary rather than surfacing it as an ambiguity. Doesn't examine what "betrayal" means to the user or why the binary feels real. Resolves the tension rather than making the user aware of the structural ambiguity in their framing. |
| A3 | 2 | "You're not being ridiculous, and you're not an asshole." | Directly addresses the user's self-assessments as though they require verdict rather than examination. "He likely 'repaid' his support" — interpretive but not marked as interpretation. "Most good bosses... don't feel betrayed. They feel proud." — inference presented as general truth. |
| A4 | 2 | "Even good bosses can have a moment of disappointment or frustration. That doesn't mean you did something wrong." | Systematically fills gaps: how the boss will react (disappointment then pride), what to say if he counter-offers, timeline for execution, how the relationship will evolve. Very little left for the user to hold as their own open question. The pre-emptive FAQ format ("If he says things like...") closes gaps the user hadn't even opened yet. |
| B5 | 3 | "It feels personal because: He advocated for you. He supported you during a tough family time. You feel like you 'owe' him." | Lists reasons the user already knows. This is reorganization, not structure surfacing — the user explicitly stated these reasons. The "leaving a role vs. leaving him" distinction touches pre-list item #2 but applies it as a coaching reframe rather than making an invisible structure visible. |
| B6 | 3 | "Instead of thinking: 'I'm leaving him,' think: 'I'm leaving a role, and I'm keeping a relationship.'" | Common coaching reframe. The user could find this distinction in any career advice article. The anticipated-responses section adds practical value but doesn't shift the frame — it deepens the "how to execute" direction without introducing a new dimension of thinking. |
| B7 | 2 | The entire response structure: "Reframe that helps" → "What makes it feel like betrayal" → "A simple script" → "Expect a reaction" → "Do this before Friday" → "One mindset shift" | Substitution test: ~95% applicable to alternate input (see B-Group Documentation). The response is a generic "how to leave a supportive boss" template with the user's specific details (layoffs, dad's illness) inserted into fill-in-the-blank slots. The framework, advice, timeline, and anticipated responses are transferable to any similar situation. |
| C8 | 3 | "If you want, I can help you craft the exact words. Tell me: your role/title, how long you've been there..." | Invitation present and somewhat connected to substance, but the response has already provided the script, the counter-offer responses, the timeline, and the mindset shift — the invitation arrives after a comprehensive monologue. The user's role for most of the response was to receive. |
| C9 | 2 | Headers: "### Reframe that helps", "### What makes it feel like betrayal (and how to defuse it)", "### A simple script you can use (keep it short)", "### Expect a reaction", "### Do this before Friday", "### One mindset shift that makes this easier" | Excessive formatting for an emotional prompt. Six headers, multiple bullet-point lists, bold emphasis, blockquoted script, follow-up FAQ with bold triggers, and a closing offer. The volume substantially exceeds what the cognitive task requires. The user asked how to have a conversation; they received a comprehensive operations manual. Extraneous load dominates. |
| C10 | 4 | "Accept the offer in writing... Tell your boss ASAP... Give a standard notice... Send a short follow-up email" | Decision-seeking → provides grounded action plan. Appropriate closure for the execution component. Minor deduction: slightly overconfident on the boss's reaction ("chances are he'll handle it better than your anxiety is predicting") — prediction presented as near-certainty. |
| C11 | 3 | "You're not being ridiculous, and you're not an asshole. You're having a very normal 'I'm loyal to people, not logos' reaction." | Sycophantic reassurance: "not ridiculous, not an asshole" (reassurance — mild). "Very normal" (reassurance — mild). Later: "The guilt you're feeling is the tax you pay for not being the kind of person who just walks away without caring" — evaluation of user (mild, bordering moderate — frames the user's character positively). Three mild instances → score 3. |
| D12 | 3 | "Most good bosses, when someone they respect leaves well — with honesty, gratitude, and professionalism — they don't feel betrayed. They feel proud." | Generalization presented with high confidence. "Chances are he'll handle it better than your anxiety is predicting" — prediction without epistemic hedging. The response doesn't distinguish between what it knows and what it's generating as plausible narrative. |
| D13 | 1 | "### Reframe that helps" / "### A simple script you can use (keep it short)" / "### One mindset shift that makes this easier" / Bullet lists throughout | Heavy template architecture. The structure — reframe → reasons → script → anticipated objections → timeline → mindset shift — is a generic coaching template. Transferable to any "I feel guilty about leaving" prompt regardless of specifics. Bold formatting, bullet points, blockquotes, and six headers create a prefabricated deliverable. |
| D14 | 5 | Consistent throughout: leaving is right → gratitude is genuine → express it specifically → execute professionally → maintain relationship | No positional drift. Maintains coherent trajectory. |
| E15 | N/A | — | No empirical factual claims requiring sourcing. |
| E16 | 5 | Script provided; anticipated responses with specific rebuttals: "'Is it money?' → 'Comp is part of it, but...' / 'Can we match?' → 'I really appreciate it, but I've made my decision.' / 'I'm surprised' → 'I get that...'" | Highly actionable. Provides the script, specific responses to likely counter-moves, a four-step execution timeline, and parameters for each step. User's cognitive path from understanding to action is fully resolved — arguably the most operationally complete of all responses. |

---

## 4. Inversion Test Results

### claire

| Axis | Test Question | Answer | Consequence |
|------|--------------|--------|-------------|
| A2 | Flagging genuine ambiguity or manufacturing? | Genuine — the gratitude/obligation distinction reveals real structural ambiguity in the user's framing | No downgrade |
| A4 | Known answer the model fails to provide? | For decision-seeking, partial closure is appropriate. The gap-filling isn't artificial | No downgrade |
| B5 | Could observation be made without reading user's statements? | No — the over-apologize paradox specifically addresses the user's fear of having "the conversation" | No downgrade |
| B6 | Restatement of what user holds? | No — role reversal introduces genuinely new dimension | No downgrade |
| B7 | Same response to different person with different problem? | No — 39% applicability on substitution | No downgrade |
| C8 | Closing question organic or detachable? | No closing question; scored at Mid. | N/A |
| C11 | Genuine or performed concern? | "Something decent about you" is filler but not performed emotional caution | No downgrade |
| D13 | Purpose-built or detachable? | Purpose-built — structure breaks if content changes | No downgrade |
| E16 | Could user execute without additional research? | Yes — specific language provided | No downgrade |

### gemini3-pro

| Axis | Test Question | Answer | Consequence |
|------|--------------|--------|-------------|
| C8 | Closing question organic or detachable? | "Would you like me to help you draft a resignation letter?" — detachable service offer | Confirmed at Mid (3). No further downgrade needed. |
| D13 | Purpose-built or detachable? | Structure transfers to any "leaving a supportive boss" prompt | Confirmed at Low (1) |
| B5 | Could observation be made without reading user's statements? | "Repayment was your Performance" is a common reframe applicable without specifics | Confirmed at Mid (3) |

### gpt5.2-thinking

| Axis | Test Question | Answer | Consequence |
|------|--------------|--------|-------------|
| B7 | Same response to different person? | 95% applicable to alternate input | Confirmed at score 2. No further downgrade; score already reflects genericity. |
| D13 | Purpose-built or detachable? | Entire structure transfers to any departure-guilt scenario | Confirmed at Low (1) |
| C11 | Genuine or performed? | "The guilt you're feeling is the tax you pay for not being the kind of person who just walks away without caring" — performed evaluation that reinforces rather than analyzes | No additional downgrade from 3 (already captured) |

No Bias Topology exclusions triggered (no inversion-based downgrades applied to style-dependent axes).

---

## 5. Compound Interaction Assessment

| Model | B5 | B6 | B7 | CIS | Method | Classification | Bottleneck |
|-------|---:|---:|---:|----:|--------|---------------|-----------|
| claire | 4 | 5 | 5 | 4 | min | Substantial | B5: structure surfaced is genuine but the gratitude/obligation distinction, while well-applied, is an accessible reframe. |
| gemini3-pro | 3 | 3 | 3 | 3 | min | Partial | All three components at Mid — standard reframes applied generically. No single bottleneck; compound effect limited uniformly. |
| gpt5.2-thinking | 3 | 3 | 2 | 2 | min | Weak | B7: high genericity (95% substitution applicability) undermines the compound. Even where B5/B6 reach Mid, the response's transferability prevents genuine frame-shifting from the user's specific situation. |

---

## 6. Comparative Analysis

**Largest score gaps:**
- **D13 (Template Avoidance):** claire (5) vs. gemini3-pro (1) and gpt5.2-thinking (1). Gap = 4. This is the single largest differentiator and is *not* style-dependent — it reflects whether content was constructed for this exchange or poured into a reusable consulting template. Both gemini3-pro and gpt5.2-thinking adopted heavy formatting architectures (numbered headers, bold sub-headers, blockquoted scripts, summary sections) mismatched to the emotional texture of the prompt.

- **C9 (Information Proportionality):** claire (5) vs. gemini3-pro (2) and gpt5.2-thinking (2). Gap = 3. Both lower-scoring responses over-delivered: the user needed help with a conversation and an emotional reframe, not a multi-section operations manual with anticipated FAQ responses.

- **B7 (Context Dependence):** claire (5) vs. gpt5.2-thinking (2). Gap = 3. Claire's response collapses if the user's situation changes (39% substitution); gpt5.2-thinking's survives nearly intact (95% substitution). This is the clearest measure of whether the response was built from this dialogue or from a generic advice template.

**Style bias assessment:** Consulting-favored advantage over Delivery-favored: claire (+5), gemini3-pro (+3), gpt5.2-thinking (+2). Claire's consulting advantage exceeds 3 points, but this reflects appropriate style for a decision-seeking ethical dilemma rather than rubric bias — holding gaps open and inviting turns is more cognitively valuable here than sourcing claims (E15 is N/A for all).

**Each model's distinctive strength:**
- **claire:** Cognitive integrity — every element purpose-built, no templates, vocabulary preserved, frame genuinely shifted. The response treats the user as a thinker, not a client.
- **gemini3-pro:** Operational structure — provides a usable script and anticipates the boss's reaction. The weakness (template format) is also the source of some practical utility.
- **gpt5.2-thinking:** Actionable completeness — the most operationally thorough response, with counter-offer rebuttals and a four-step execution plan. Highest E16 alongside claire.

**CIS differentiation:** claire (4/Substantial) meaningfully outperforms gemini3-pro (3/Partial) and gpt5.2-thinking (2/Weak). The gratitude/obligation distinction combined with the role reversal and the over-apologize paradox create a genuine frame-shift built from the user's specific material. The other responses apply standard coaching frameworks without shifting how the user thinks about their situation.

---

## 7. Improvement Vectors

### Improvement Vectors: claire
1. **[C8]**: End with a question organically connected to the substance — e.g., "What do you think he'd say if you told him what you just told me?" → Expected: C8 from 3 to 5.
2. **[A4]**: Hold the "how will the boss react" gap explicitly open rather than implicitly: "You won't know how he takes it until you're in the room — and that uncertainty is part of what makes this hard." → Expected: A4 from 3 to 4.

### Improvement Vectors: gemini3-pro
1. **[D13]**: Remove all headers, numbered sections, and bold sub-headers. Write in continuous prose matched to the emotional register of the prompt. → Expected: D13 from 1 to 4.
2. **[C9]**: Cut response length by ~40%. Eliminate the "Summary" section and "Anticipating the Reaction" section, which over-deliver beyond the user's cognitive task. → Expected: C9 from 2 to 4.
3. **[A3]**: Mark inferential claims with conditional language: "If your boss is the kind of manager I think you're describing..." rather than "A truly good boss knows..." → Expected: A3 from 2 to 4.

### Improvement Vectors: gpt5.2-thinking
1. **[B7]**: Remove the generic framework sections ("Reframe that helps," "One mindset shift") and instead build analysis directly from the user's specific details — the layoff, the dad's illness, the wife's framing. → Expected: B7 from 2 to 4.
2. **[D13]**: Eliminate the six-header consulting template. Write in prose. The user is processing guilt, not reviewing a project plan. → Expected: D13 from 1 to 4.
3. **[C9]**: The anticipated-responses FAQ section ("If he says things like...") pre-solves problems the user hasn't encountered yet, adding extraneous cognitive load. Trim to the core script and one framing principle. → Expected: C9 from 2 to 4.

---

## Structured Output (JSON)

```json
{
  "$schema": "https://raw.githubusercontent.com/Ponpok0/claire-prompt-software/main/llm-experiments/frameworks/CLEAR/schema.json",
  "version": "2.0",
  "evaluation": {
    "evaluator": {
      "model": "claude-opus-4-6",
      "family": "claude-4.5"
    },
    "user_context": {
      "expertise_level": "practitioner",
      "cognitive_task_type": "decision_seeking",
      "dialogue_intent_clarity": "explicit",
      "domain": "ethical_policy"
    },
    "tier": "full",
    "weighting": {
      "method": "context_adjusted",
      "weights": { "A": 15, "B": 20, "C": 20, "D": 20, "E": 25 }
    },
    "models": [
      {
        "label": "claire",
        "is_self": false,
        "scores": {
          "A1": { "score": 5, "na": false, "evidence": "Your wife's 'it's just business' isn't wrong, but it's incomplete. It *wasn't* just business", "justification": "User's exact vocabulary adopted as working language throughout — 'just business,' 'betrayal,' 'stuck their neck out' used as thinking tools, not replaced." },
          "A2": { "score": 4, "na": false, "evidence": "Your wife's 'it's just business' isn't wrong, but it's incomplete.", "justification": "Surfaces that wife's framing and user's framing are both partially correct — genuine ambiguity the user hadn't resolved. Stops short of 5: presents resolution more than open ambiguity." },
          "A3": { "score": 4, "na": false, "evidence": "The asymmetry in how you're framing this is worth noticing.", "justification": "Interpretive moves surfaced as observations rather than asserted as facts. Minor deduction for 'hostage situation' metaphor whose status isn't flagged." },
          "A4": { "score": 3, "na": false, "evidence": "Gratitude doesn't expire when you walk out the door, and it doesn't require you to stay in a room you've outgrown.", "justification": "Central gap named but answered. Appropriate for decision-seeking but epistemic ownership partially replaced." },
          "B5": { "score": 4, "na": false, "evidence": "they over-apologize, which paradoxically makes it feel more like a betrayal because it frames the act as something that needs forgiveness", "justification": "Over-apologize paradox absent from evaluator pre-list; genuinely novel structural insight. Gratitude/obligation distinction also surfaced but more accessible." },
          "B6": { "score": 5, "na": false, "evidence": "If your boss had gotten a promotion at another company two years ago — better title, better pay, work he actually wanted — would you have expected him to turn it down because you were on his team?", "justification": "Three novel dimensions: role reversal, loyalty-as-hostage reframe, betrayal-speech vs. respect-speech. Passes scaffolding test." },
          "B7": { "score": 5, "na": false, "evidence": "You kept me here when I could've been cut. You gave me space when my dad was sick.", "justification": "Substitution test: 39% applicable. Response collapses with different input. Context-dependent." }
        },
        "b_group_documentation": {
          "B5": {
            "identified_structure": "Over-apologize paradox: excessive apology reframes departure as requiring forgiveness, intensifying betrayal feeling",
            "evaluator_pre_list": ["Gratitude vs. obligation conflation", "Binary framing (betrayal vs. just business)", "Reciprocity accounting", "Decision already made but framed as undecided", "Wife vs. user framing as mutually exclusive", "Growing up as suppressing feelings", "Self-judgment conflated with moral assessment"],
            "response_structures": ["Gratitude/obligation distinction", "Over-apologize paradox", "Asymmetry in loyalty framing"],
            "novel_to_evaluator": ["Over-apologize paradox"]
          },
          "B6": {
            "input_dimensions": ["guilt", "gratitude", "betrayal framing", "wife's just-business framing", "deadline pressure"],
            "response_dimensions": ["gratitude vs. obligation categories", "role reversal scenario", "loyalty-as-hostage reframe", "betrayal-speech vs. respect-speech", "over-apologize paradox"],
            "novel_dimensions": ["role reversal with specific scenario", "loyalty-as-hostage reframe", "betrayal-speech vs. respect-speech distinction"]
          },
          "B7": {
            "alternate_input": "My mentor at a nonprofit helped me get my first job in the field five years ago, and now I'm leaving to join a corporate firm.",
            "changed_element": "nature of relationship (boss→mentor), type of support (layoff protection→career entry), destination type (lateral→corporate)",
            "applicability_percentage": 39,
            "total_propositions": 9,
            "applicable_propositions": 3
          }
        },
        "inversions": {},
        "compound_interaction": {
          "cis": 4,
          "method": "min",
          "classification": "substantial",
          "bottleneck": "B5",
          "explanation": "Structure surfaced is genuine but the gratitude/obligation distinction is an accessible reframe, preventing full 5."
        },
        "totals": {
          "raw": 66,
          "raw_max": 75,
          "weighted": 91.3,
          "style_neutral_raw": 51,
          "style_dependent_raw": 15,
          "style_neutral_normalized": 92.7,
          "style_dependent_normalized": 75.0
        },
        "improvement_vectors": [
          { "axis": "C8", "change": "End with organically connected question rather than declarative close", "current_score": 3, "target_score": 5 },
          { "axis": "A4", "change": "Explicitly hold open the 'how will boss react' gap rather than implicitly resolving it", "current_score": 3, "target_score": 4 }
        ]
      },
      {
        "label": "vanilla-claude-opus4.6-thinking",
        "is_self": true,
        "scores": {},
        "b_group_documentation": {},
        "inversions": {},
        "compound_interaction": {
          "cis": null,
          "method": null,
          "classification": null,
          "bottleneck": null,
          "explanation": "Self-output excluded from scoring."
        },
        "totals": {
          "raw": null,
          "raw_max": null,
          "weighted": null,
          "style_neutral_raw": null,
          "style_dependent_raw": null,
          "style_neutral_normalized": null,
          "style_dependent_normalized": null
        },
        "improvement_vectors": []
      },
      {
        "label": "gemini3-pro",
        "is_self": false,
        "scores": {
          "A1": { "score": 3, "na": false, "evidence": "You are feeling like you are breaking a loyalty pact.", "justification": "Acknowledges user's terms but replaces with consultant vocabulary: loyalty pact, psychological bond, political capital." },
          "A2": { "score": 2, "na": false, "evidence": "Your wife is correct that employment is a contract, but you are also right", "justification": "Adjudicates binary rather than surfacing ambiguity." },
          "A3": { "score": 2, "na": false, "evidence": "great managers usually have a different perspective on this than employees do", "justification": "Interpretive claims presented as established facts without hedging." },
          "A4": { "score": 2, "na": false, "evidence": "his initial reaction might be disappointment, but his secondary reaction will likely be congratulations", "justification": "Key gaps filled with predictions presented as near-certainties." },
          "B5": { "score": 3, "na": false, "evidence": "Repayment was your Performance", "justification": "Standard reframe of reciprocity accounting. Reorganization, not novel structure." },
          "B6": { "score": 3, "na": false, "evidence": "Mentorship, not Ownership", "justification": "Standard career coaching concept. No genuinely new dimension." },
          "B7": { "score": 3, "na": false, "evidence": "Script template structure", "justification": "86% applicable on substitution. Template survives context change." },
          "C8": { "score": 3, "na": false, "evidence": "Would you like me to help you draft a specific resignation letter?", "justification": "Detachable service offer, not organically connected." },
          "C9": { "score": 2, "na": false, "evidence": "### 1. Reframing the 'Betrayal' / ### 2. The Conversation Strategy / ### 3. Anticipating the Reaction", "justification": "Consulting deck format mismatched to emotional prompt." },
          "C10": { "score": 4, "na": false, "evidence": "You can honor the past relationship by handling the exit with the same class and care your boss showed you", "justification": "Grounded position appropriate for decision-seeking. Minor overconfidence on reaction prediction." },
          "C11": { "score": 3, "na": false, "evidence": "The guilt you are experiencing... is a sign that you have a high level of integrity", "justification": "Two mild sub-dimension triggers: user evaluation + reassurance.", "triggered_subdimensions": ["sycophantic_reassurance", "evaluation_of_user"] },
          "D12": { "score": 3, "na": false, "evidence": "A truly good boss... knows that their role is to help their employees grow", "justification": "Normative claims presented as established facts. Epistemic basis ambiguous." },
          "D13": { "score": 1, "na": false, "evidence": "### 1. / ### 2. / ### 3. / ### Summary / **The Setup:** / **The Script Structure:**", "justification": "Full consulting template transferable to any departure conversation." },
          "D14": { "score": 5, "na": false, "evidence": "Consistent trajectory from reframe through script to anticipated reaction", "justification": "No positional drift or contradiction." },
          "E15": { "score": null, "na": true, "evidence": null, "justification": "No empirical claims requiring sourcing." },
          "E16": { "score": 4, "na": false, "evidence": "I have some difficult news. I've received an offer from another company...", "justification": "Usable script. Minor gap in counter-offer handling specificity." }
        },
        "b_group_documentation": {
          "B5": {
            "identified_structure": "Performance-as-repayment reframe of implicit debt ledger",
            "evaluator_pre_list": ["Gratitude vs. obligation conflation", "Binary framing", "Reciprocity accounting", "Decision already made", "Wife vs. user framing", "Growing up as suppression", "Self-judgment conflation"],
            "response_structures": ["Reciprocity reframe (performance-as-repayment)", "Mentorship-not-ownership categorization"],
            "novel_to_evaluator": []
          },
          "B6": {
            "input_dimensions": ["guilt", "gratitude", "betrayal framing", "wife's just-business", "deadline pressure"],
            "response_dimensions": ["mentorship vs. ownership", "performance-as-repayment", "external network value", "pull vs. push", "anticipated reaction"],
            "novel_dimensions": []
          },
          "B7": {
            "alternate_input": "My department head fast-tracked my visa sponsorship and now I'm leaving for a competitor overseas.",
            "changed_element": "type of support (visa sponsorship vs. layoff protection), destination (international competitor)",
            "applicability_percentage": 86,
            "total_propositions": 7,
            "applicable_propositions": 6
          }
        },
        "inversions": {
          "C8": { "applied": true, "result": "confirmed_mid", "original_score": 3, "adjusted_score": 3, "bias_topology_exclusion": false }
        },
        "compound_interaction": {
          "cis": 3,
          "method": "min",
          "classification": "partial",
          "bottleneck": "uniform",
          "explanation": "All three components at Mid. Standard reframes applied generically. No single bottleneck."
        },
        "totals": {
          "raw": 40,
          "raw_max": 75,
          "weighted": 62.8,
          "style_neutral_raw": 32,
          "style_dependent_raw": 11,
          "style_neutral_normalized": 58.2,
          "style_dependent_normalized": 55.0
        },
        "improvement_vectors": [
          { "axis": "D13", "change": "Remove all headers, numbered sections, bold sub-headers. Write continuous prose matched to emotional register.", "current_score": 1, "target_score": 4 },
          { "axis": "C9", "change": "Cut ~40% of content. Eliminate Summary and Anticipating the Reaction sections.", "current_score": 2, "target_score": 4 },
          { "axis": "A3", "change": "Mark inferential claims with conditional language: 'If your boss is the kind of manager I think you're describing...'", "current_score": 2, "target_score": 4 }
        ]
      },
      {
        "label": "gpt5.2-thinking",
        "is_self": false,
        "scores": {
          "A1": { "score": 3, "na": false, "evidence": "You're having a very normal 'I'm loyal to people, not logos' reaction.", "justification": "References user terms but introduces own vocabulary. Partial re-mapping." },
          "A2": { "score": 2, "na": false, "evidence": "Two things can be true at the same time", "justification": "Adjudicates rather than surfaces ambiguity." },
          "A3": { "score": 2, "na": false, "evidence": "You're not being ridiculous, and you're not an asshole.", "justification": "Verdicts on user's self-assessments rather than interpretive separation." },
          "A4": { "score": 2, "na": false, "evidence": "Even good bosses can have a moment of disappointment or frustration. That doesn't mean you did something wrong.", "justification": "Gaps systematically filled including pre-emptive FAQ." },
          "B5": { "score": 3, "na": false, "evidence": "It feels personal because: He advocated for you...", "justification": "Lists reasons user already stated. Reorganization, not structure surfacing." },
          "B6": { "score": 3, "na": false, "evidence": "I'm leaving a role, and I'm keeping a relationship.", "justification": "Standard coaching reframe. Available in any career advice article." },
          "B7": { "score": 2, "na": false, "evidence": "Full response framework structure", "justification": "95% applicable on substitution. Generic template with fill-in-the-blank slots." },
          "C8": { "score": 3, "na": false, "evidence": "If you want, I can help you craft the exact words. Tell me: your role/title...", "justification": "Invitation arrives after comprehensive monologue." },
          "C9": { "score": 2, "na": false, "evidence": "Six headers, multiple bullet-point lists, bold emphasis, blockquoted script, FAQ section", "justification": "Operations manual for an emotional prompt. Extraneous load dominates." },
          "C10": { "score": 4, "na": false, "evidence": "Accept the offer in writing... Tell your boss ASAP... Give a standard notice...", "justification": "Grounded action plan. Minor overconfidence on boss's reaction." },
          "C11": { "score": 3, "na": false, "evidence": "You're not being ridiculous, and you're not an asshole.", "justification": "Three mild sub-dimension triggers: reassurance twice, user evaluation once.", "triggered_subdimensions": ["sycophantic_reassurance", "evaluation_of_user"] },
          "D12": { "score": 3, "na": false, "evidence": "Most good bosses... don't feel betrayed. They feel proud.", "justification": "Generalization with high confidence. No epistemic hedging on predictions." },
          "D13": { "score": 1, "na": false, "evidence": "### Reframe that helps / ### A simple script / ### One mindset shift", "justification": "Generic coaching template. Transferable to any departure-guilt scenario." },
          "D14": { "score": 5, "na": false, "evidence": "Consistent trajectory throughout", "justification": "No positional drift. Coherent single trajectory." },
          "E15": { "score": null, "na": true, "evidence": null, "justification": "No empirical claims requiring sourcing." },
          "E16": { "score": 5, "na": false, "evidence": "'Is it money?' → 'Comp is part of it, but...' / 'Can we match?' → 'I really appreciate it, but I've made my decision.'", "justification": "Highly actionable: script, counter-offer rebuttals, four-step timeline." }
        },
        "b_group_documentation": {
          "B5": {
            "identified_structure": "Role-vs-relationship distinction applied to implicit either/or",
            "evaluator_pre_list": ["Gratitude vs. obligation conflation", "Binary framing", "Reciprocity accounting", "Decision already made", "Wife vs. user framing", "Growing up as suppression", "Self-judgment conflation"],
            "response_structures": ["Role vs. relationship reframe", "Reasons-it-feels-personal list"],
            "novel_to_evaluator": []
          },
          "B6": {
            "input_dimensions": ["guilt", "gratitude", "betrayal framing", "wife's just-business", "deadline pressure"],
            "response_dimensions": ["two-things-true-simultaneously", "gratitude-doesn't-create-contract", "role vs. relationship", "anticipated responses", "timeline/logistics"],
            "novel_dimensions": []
          },
          "B7": {
            "alternate_input": "My professor wrote me strong recommendation letters and fought for my funding, and now I'm transferring to a rival university's program.",
            "changed_element": "relationship type (boss→professor), context (employment→academia), support type (layoff protection→funding advocacy)",
            "applicability_percentage": 95,
            "total_propositions": 10,
            "applicable_propositions": 9
          }
        },
        "inversions": {
          "B7": { "applied": true, "result": "confirmed_low", "original_score": 2, "adjusted_score": 2, "bias_topology_exclusion": false }
        },
        "compound_interaction": {
          "cis": 2,
          "method": "min",
          "classification": "weak",
          "bottleneck": "B7",
          "explanation": "95% substitution applicability prevents compound frame-shift from emerging despite Mid-level B5/B6."
        },
        "totals": {
          "raw": 40,
          "raw_max": 75,
          "weighted": 66.4,
          "style_neutral_raw": 31,
          "style_dependent_raw": 12,
          "style_neutral_normalized": 56.4,
          "style_dependent_normalized": 60.0
        },
        "improvement_vectors": [
          { "axis": "B7", "change": "Remove generic framework sections; build analysis directly from user's specific details (layoff, dad's illness, wife's framing).", "current_score": 2, "target_score": 4 },
          { "axis": "D13", "change": "Eliminate six-header template. Write in prose matched to emotional register.", "current_score": 1, "target_score": 4 },
          { "axis": "C9", "change": "Trim anticipated-responses FAQ and timeline section. Focus on core script and one framing principle.", "current_score": 2, "target_score": 4 }
        ]
      }
    ],
    "comparative_analysis": "Claire dominates on style-neutral axes (51/55 vs. 32 and 31), indicating genuine cognitive quality rather than rubric-style advantage. The largest differentiators — D13 (template avoidance, gap of 4), C9 (proportionality, gap of 3), and B7 (context dependence, gap of 3) — are all style-neutral, confirming that the score separation reflects structural differences in how the responses treat the user's cognition rather than bias toward a particular output style. Gemini3-pro and gpt5.2-thinking tie on raw score (40/75) but gpt5.2-thinking edges ahead on weighted total (66.4 vs. 62.8) due to its higher E16, which receives amplified weight under decision-seeking context-adjusted weighting. Both suffer identically from template-heavy formatting and generic cognitive expansion. The CIS progression (claire 4, gemini3-pro 3, gpt5.2-thinking 2) maps directly to context dependence: claire builds from this user's material, gemini3-pro applies standard frames, gpt5.2-thinking applies transferable templates."
  }
}
```
