# Decision workflow

## Build a useful matrix

Frame one clear question, then list the realistic options and constraints that
apply to all of them. A matrix is useful only when the same criteria can be
applied consistently to every option.

Use this scale for every criterion:

| Score | Meaning |
| --- | --- |
| 1 | Poor fit or serious drawback |
| 2 | Below-average fit |
| 3 | Acceptable or mixed fit |
| 4 | Good fit |
| 5 | Excellent fit |

Weights are non-negative percentages that sum to 100. For an option `o`,
calculate:

```text
weighted score(o) = Σ (weight(c) / 100 × score(o, c))
```

Scores range from 1 to 5. Keep unrounded values for comparison and round only
when displaying them.

## Sensitivity and evidence

Change the weight of the most important criterion to one plausible alternative.
If the top option changes, say that the result is sensitive. A small numerical
gap is a trade-off to explore, not proof of a universally best option.

For each non-obvious score, state whether it comes from a source, an estimate,
or the user's preference. Mark missing or time-sensitive information as an
open verification item. The skill does not make factual claims current by
itself.

## Response shape

Use this compact structure unless the user requests another format:

1. **Decision and constraints** — what is being chosen and what is fixed.
2. **Criteria and weights** — explain the one or two weights that drive the
   result.
3. **Matrix** — options, criterion scores, and weighted totals.
4. **Recommendation** — best fit for the stated priorities, not an absolute
   winner.
5. **Trade-offs and uncertainty** — what could change the result.
6. **Next verification** — one practical check before acting.
