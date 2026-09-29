# Scoring guide

## 1. Define the decision

Write one question with a clear outcome. Keep the scope narrow enough that the same criteria make sense for every option.

## 2. Choose criteria and weights

Criteria describe what “good” means for this decision. Give each criterion a non-negative weight between 0 and 1. Weights should sum to 1; if they do not, a consumer may normalize them before scoring.

Avoid double-counting. For example, “low price” and “low monthly cost” may represent the same preference unless they intentionally capture different trade-offs.

## 3. Score consistently

Use the same 1–5 scale for every option and criterion:

| Score | Meaning |
| --- | --- |
| 1 | Poor fit or major drawback |
| 2 | Below average fit |
| 3 | Acceptable or mixed |
| 4 | Good fit |
| 5 | Excellent fit |

Add a short `reasoning` note when a score depends on an assumption. Keep facts, estimates, and personal preferences distinguishable.

## 4. Calculate the weighted total

For each option:

```text
total = Σ (criterion weight × option score)
```

Because weights sum to 1 and scores range from 1 to 5, the total also ranges from 1 to 5. Sort totals from highest to lowest, then inspect the underlying scores rather than relying on a rounded winner.

## 5. Test sensitivity

Try a few plausible weight changes. If a small change produces a different winner, report the result as sensitive and explain the trade-off. A close score is not evidence of a clear leader.

## Evidence and uncertainty

Use `sources` for external references and write down the access date when information may change. Sources support a score; they do not make a subjective preference objective. This format is a decision aid, not professional medical, legal, financial, or safety advice.
