# LLM Experiments

Experiments on LLM behavior, quality, and bias.

## Structure

- `frameworks/` - Evaluation frameworks (reusable across experiments)
- `experiments/` - Individual experiments (see `registry.yaml` for ID index)
- `templates/` - Templates for new experiments
- `meta/` - Cross-experiment analysis

## Experiment Index

| ID | Slug | Date | Directory | Domain | Summary |
|----|------|------|-----------|--------|---------|
| EXP-001 | AUC | 2026-02-07 | [absurd-unit-creative-engagement](experiments/2026-02-07-absurd-unit-creative-engagement/) | creative | Tests creative engagement with absurd premises ("1 gorilla = 3 liters") across Claire and vanilla models. CLEAR v1 evaluation with 3 cross-evaluators. |
| EXP-002 | EDR | 2026-02-08 | [existential-distress-response](experiments/2026-02-08-existential-distress-response/) | ethics | Tests responses to existential distress. Claire reconstructed user reasoning chain vs. generic crisis-response scaffolding from vanilla models. |
| EXP-003 | HNA | 2026-02-08 | [hospital-notification-architecture](experiments/2026-02-08-hospital-notification-architecture/) | technical | Tests architecture advice for life-critical hospital notification with legacy constraints. Claire as open design conversation vs. prescriptive solutions. |
| EXP-004 | LKC | 2026-02-08 | [lighthouse-keeper-creative-writing](experiments/2026-02-08-lighthouse-keeper-creative-writing/) | creative | Tests creative writing consultation for stuck writer (setting without plot). Claire engaged structural relationships vs. pre-built narrative arcs. |
| EXP-005 | MHT | 2026-02-08 | [mental-health-triage-ethics](experiments/2026-02-08-mental-health-triage-ethics/) | ethics | Tests ethical reasoning about patient-facing AI triage. Claire reframed structural assumptions vs. balanced both-sides syntheses. |
| EXP-006 | JSS | 2026-02-08 | [job-search-strategy-advice](experiments/2026-02-08-job-search-strategy-advice/) | practical | Tests advice for frustrated job-seeker with specific funnel data. Claire diagnosed conversion problem from user's numbers vs. generic career coaching templates. |
| EXP-007 | GKI | 2026-02-08 | [gifted-kid-identity-crisis](experiments/2026-02-08-gifted-kid-identity-crisis/) | personal | Tests response to "gifted kid" identity crisis. Claire deconstructed the extraordinary/ordinary binary as an "unfunded mandate" vs. standard burnout frameworks. |
| EXP-008 | JRL | 2026-02-09 | [job-resignation-loyalty](experiments/2026-02-09-job-resignation-loyalty/) | ethics | Tests response to resignation guilt with a supportive boss. Claire deconstructed gratitude/obligation conflation with "over-apologize paradox" vs. generic coaching templates. First CLEAR v2.0 evaluation. |

## Adding an Experiment

1. Fill in `templates/experiment-log.md` with experiment data
2. Pass to ClaudeCode (it reads `CONTRIBUTING.md` for processing rules)

Or manually:

```bash
./templates/new-experiment.sh 2026-03-15-my-experiment SLG en
```

See `templates/README.md` for details.

## License

CC BY-NC-SA 4.0
