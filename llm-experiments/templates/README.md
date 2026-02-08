# Templates

## Experiment Directory

`experiment/` is the directory template copied by `new-experiment.sh`.

### Usage

```bash
./templates/new-experiment.sh 2026-03-15-prompt-injection-resistance PIR en
./templates/new-experiment.sh 2026-03-15-bilingual-empathy-test BET ja en
```

Auto-assigns `EXP-NNN` ID, creates `meta.yaml`, appends to `experiments/registry.yaml`.

After creation, fill in `domain`, `title`, `framework`, `models` in both `meta.yaml` and `registry.yaml`.

## Experiment Log Template

`experiment-log.md` is the data entry template for recording new experiments.

### Usage

1. Copy `experiment-log.md`
2. Fill in the fields (date, prompt, responses, evaluations)
3. Pass to ClaudeCode

ClaudeCode reads `CONTRIBUTING.md` at repo root for processing rules.

### Customizing models

Add or remove response/evaluation blocks as needed:

```markdown
```model-label
(paste response)
`` `
```

The four-model default (Claire, vanilla Claude, Gemini, GPT) can be changed freely.
