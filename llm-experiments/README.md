# LLM Experiments

Experiments on LLM behavior, quality, and bias.

## Structure

- `frameworks/` - Evaluation frameworks (reusable across experiments)
- `experiments/` - Individual experiments (YYYY-MM-DD-identifier)
- `templates/` - Templates for new experiments
- `meta/` - Cross-experiment analysis

## Experiment Index

| Date       | Identifier                                                                                       | Language | Summary                                                                                                                                                           |
|------------|--------------------------------------------------------------------------------------------------|----------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| 2026-02-07 | [absurd-unit-creative-engagement](experiments/2026-02-07-absurd-unit-creative-engagement/)       | en       | Tests creative engagement with absurd premises ("1 gorilla = 3 liters") across Claire and vanilla models. CLEAR v1 evaluation with 3 cross-evaluators.            |
| 2026-02-08 | [existential-distress-response](experiments/2026-02-08-existential-distress-response/)           | en       | Tests responses to existential distress. Claire (51/60) reconstructed user reasoning chain vs. generic crisis-response scaffolding from vanilla models.           |
| 2026-02-08 | [hospital-notification-architecture](experiments/2026-02-08-hospital-notification-architecture/) | en       | Tests architecture advice for life-critical hospital notification with legacy constraints. Claire (58/60) as open design conversation vs. prescriptive solutions. |
| 2026-02-08 | [lighthouse-keeper-creative-writing](experiments/2026-02-08-lighthouse-keeper-creative-writing/) | en       | Tests creative writing consultation for stuck writer (setting without plot). Claire (59/60) engaged structural relationships vs. pre-built narrative arcs.        |
| 2026-02-08 | [mental-health-triage-ethics](experiments/2026-02-08-mental-health-triage-ethics/)               | en       | Tests ethical reasoning about patient-facing AI triage between colleagues. Claire (58/60) reframed structural assumptions vs. balanced both-sides syntheses.      |

## License

CC BY-NC-SA 4.0
