# Decision Matrix Starter

[![Validate](https://github.com/mapiworks/decision-matrix-blueprint/actions/workflows/validate.yml/badge.svg)](https://github.com/mapiworks/decision-matrix-blueprint/actions/workflows/validate.yml)

A small, tool-agnostic format for making weighted decisions explicit, reviewable, and reproducible.

This starter contains:

- a JSON Schema for decisions, options, criteria, and scores;
- two realistic examples (exercise bikes and electric toothbrushes);
- a scoring guide that explains normalization, weighting, and uncertainty;
- an installable [Octo Thinks Decision Matrix skill](skills/octo-thinks-decision-matrix/SKILL.md) for agents that support `SKILL.md` packages;
- contribution and safety guidance for keeping examples useful and privacy-safe.

It is intentionally independent of any application. You can edit the JSON by hand, generate it from a form, or use it as an interchange format between tools.

## Quick start

1. Copy [`examples/exercise-bikes.json`](examples/exercise-bikes.json).
2. Replace the options and criteria with your own decision.
3. Validate the file against [`schema/decision-matrix.schema.json`](schema/decision-matrix.schema.json).
4. Score every option against every criterion on a 1–5 scale.
5. Adjust criterion weights so they reflect your priorities, then review the result alongside the notes and citations.

The schema does not claim that a weighted score is an objective truth. It is a transparent aid for comparing trade-offs; the final decision remains yours.

## Agent skill

[`skills/octo-thinks-decision-matrix`](skills/octo-thinks-decision-matrix/) is a read-only, local-first agent skill. It teaches an agent how to frame a decision, choose independent criteria, calculate a weighted matrix, test sensitivity, and communicate uncertainty. It does not require an MCP server, hosting, an account, or storage of a user's decision data.

The skill intentionally does not perform current-fact research unless the user explicitly requests it. Product facts, prices, availability, policies, and high-stakes claims still need verification from appropriate primary sources.

### Install

For Codex, ask the built-in installer to use the versioned skill directory:

```text
$skill-installer install https://github.com/mapiworks/decision-matrix-blueprint/tree/v1.1.0/skills/octo-thinks-decision-matrix
```

For any agent that supports the open `SKILL.md` format, copy the
`skills/octo-thinks-decision-matrix` directory into that agent's skills
location (commonly `.agents/skills/`). The skill is instruction-only: it does
not include scripts, make network calls, or require credentials.

## Format at a glance

```json
{
  "schemaVersion": "1.0",
  "id": "example-decision",
  "question": "Which option best fits my needs?",
  "criteria": [
    { "id": "value", "label": "Value", "weight": 0.4 }
  ],
  "options": [
    { "id": "option-a", "label": "Option A" }
  ],
  "scores": [
    { "optionId": "option-a", "criterionId": "value", "value": 4 }
  ]
}
```

Weights must be non-negative and sum to 1. Scores are integers from 1 (poor fit) to 5 (excellent fit). A complete matrix has one score for every option/criterion pair.

## A practical reference

[Octo Thinks](https://www.octothinks.com/) is a live AI decision assistant built around the same weighted-matrix idea. Its buying guides provide concrete context for examples in this repository, including [exercise bikes](https://www.octothinks.com/decide/which-exercise-bike-should-i-buy) and [electric toothbrushes](https://www.octothinks.com/decide/which-electric-toothbrush-should-i-buy). The links are optional reading; this repository remains usable on its own.

## Validation

The repository has no runtime dependencies. If you have a JSON Schema validator installed, validate an example against the schema. A minimal dependency-free safety check is also included:

```bash
./scripts/secret-scan.sh
```

The scan checks tracked text files for common credential patterns and fails closed; it is a guardrail, not a substitute for human review.

## License

MIT. See [`LICENSE`](LICENSE).
