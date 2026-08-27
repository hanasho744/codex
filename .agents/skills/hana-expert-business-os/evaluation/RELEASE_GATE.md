# Client Deliverable Release Gate

## Default policy
A material external deliverable is not considered client-ready merely because it is complete. It must pass both the numeric rubric and the fatal-defect gate.

## Release thresholds
- >=90 and no fatal defects: GO
- 85–89 and no fatal defects: CONDITIONAL GO only after targeted human review of flagged dimensions
- <85: NO-GO / rework
- any fatal defect: NO-GO regardless of score

## Mandatory pre-release checks
### Identity & scope
- correct client/project/product/company
- correct model/SKU/revision/market
- date/version/scope stated
- requested questions mapped to answers

### Evidence
- material claims sourced
- primary/current sources used where required
- stale/legacy evidence identified
- fact vs inference vs supplier claim separated
- contradictions surfaced

### Numbers
- formulas checked
- totals checked
- currencies normalized
- tax basis explicit
- units and quantities normalized
- Incoterm and cost responsibility explicit

### Domain logic
- regulatory claims configuration-specific
- HS reasoning documented when material
- certification linkage verified when material
- product changes mapped to downstream impact
- logistics schedule distinguishes confirmed vs expected
- finance separates revenue/cash/transfers/investment movements

### Client safety
- no internal margin/floor/negotiation note leakage
- no private unrelated personal data
- no blame language unless explicitly appropriate and evidenced
- no unsupported superlatives
- no hidden unresolved customer question

### Japanese quality
When Japanese is used:
- native business logic and terminology
- confirmation status distinguished: `確認済み / 現時点の認識 / 要確認 / 当社提案`
- no vague assurance where a gate remains
- no literal Chinese word order

### Assetization
- filename/version correct
- internal/external version separated
- source/evidence appendix or links present
- canonical storage target identified
- change log updated for conclusion-affecting revision

## Release note
Internal reviewer records:
- score
- GO / CONDITIONAL GO / NO-GO
- fatal defects
- unresolved items
- version/date
- required human sign-off, if any

## Principle
The release gate optimizes for decision reliability, not document polish. A visually excellent report with weak evidence or incorrect logic is NO-GO; a technically strong draft with poor executive hierarchy requires client-delivery rework before release.
