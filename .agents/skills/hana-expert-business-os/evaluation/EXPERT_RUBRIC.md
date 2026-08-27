# HANA Expert Business OS — Master Evaluation Rubric

## Purpose
Score material outputs before they are treated as client-ready or decision-ready. This rubric evaluates the quality of the work product, not writing fluency alone.

## Scoring model
Total: 100 points.

### A. Evidence integrity — 20
- 18–20: material claims trace to authoritative/current evidence; fact/inference/estimate clearly separated; contradictory sources reconciled or explicitly flagged.
- 14–17: mostly well-supported, but a small number of secondary/unclear claims remain.
- 9–13: important assertions depend on supplier/media claims or stale sources without sufficient qualification.
- 0–8: unsupported material claims, fabricated precision, or missing evidence chain.

### B. Domain depth — 20
- 18–20: analysis reaches the correct professional layer (entity/model/revision/component/regulation/Incoterm/cost driver/process gate as relevant), explains causal relationships, and covers key failure modes.
- 14–17: correct but one layer too shallow in some areas.
- 9–13: descriptive rather than analytical; misses important professional dimensions.
- 0–8: generic summary or materially incorrect domain framing.

### C. Quantitative & data integrity — 15
- 14–15: units, currency, tax, quantity, time period, formulas, scenarios, and totals are normalized and auditable.
- 11–13: minor omissions not affecting decision.
- 7–10: calculations are plausible but basis/normalization is incomplete.
- 0–6: arithmetic errors, unit mixing, tax/currency ambiguity, or misleading totals.

### D. Decision usefulness — 15
- 14–15: clearly states decision, options, recommendation, assumptions, trade-offs, and next action.
- 11–13: recommendation exists but trade-offs or trigger conditions are incomplete.
- 7–10: findings are useful but reader must reconstruct the decision logic.
- 0–6: information dump with no decision product.

### E. Commercial & operational coherence — 10
- 9–10: links product/spec/compliance/supply chain/logistics/customer acceptance/economics and identifies downstream consequences.
- 7–8: mostly coherent, some cross-functional links missing.
- 4–6: siloed analysis.
- 0–3: conclusion ignores material operational/commercial constraints.

### F. Client delivery quality — 10
- 9–10: first section enables executive decision; body is MECE; appendix is auditable; no internal leakage; Japanese is natural when applicable.
- 7–8: professional but requires light editing.
- 4–6: too long, repetitive, literal translation, or weak hierarchy.
- 0–3: not safe/professional for client delivery.

### G. Risk, uncertainty & limitation handling — 5
- 5: material unknowns, confidence, sensitivity, stop conditions, and verification actions are explicit.
- 4: minor uncertainty handling gaps.
- 2–3: some caveats but not tied to decisions.
- 0–1: false certainty or missing material limitations.

### H. Traceability & asset quality — 5
- 5: version/date/scope/source list/change log/owner/action fields allow another professional to continue the work.
- 4: largely reproducible.
- 2–3: useful but dependent on chat context.
- 0–1: output is not reusable as a business asset.

## Release classes
- 95–100: Expert+ / Partner-ready. Suitable for strategic client decision with minimal human editing.
- 90–94: Expert / Client-ready. Suitable for external delivery after normal final check.
- 85–89: Professional / Conditional release. Requires targeted human review of flagged dimensions.
- 75–84: Internal draft only. Useful analysis but not external-ready.
- <75: Rework required.

## Fatal defects — automatic NO-GO regardless of numeric score
Any one of the following blocks client release:
1. Material fabricated or unsupported claim presented as fact.
2. Wrong legal entity/model/version materially affecting conclusion.
3. Current regulation/tariff/certification claimed without current verification when material.
4. Material arithmetic/unit/currency/tax error.
5. Internal margin/floor price/confidential negotiation data leaked into external deliverable.
6. Recommendation contradicts the cited evidence.
7. Customer question omitted without explicit unresolved status.
8. Source file/email wording materially changed in a way that alters meaning.
9. Dangerous-goods/compliance conclusion made while product/battery/configuration is unresolved.
10. Client/private data persisted into a public knowledge repository.

## Three-pass evaluation procedure
### Pass 1 — Fact checker
Score A + C + G. Identify unsupported claims, missing source dates, calculation errors, and unresolved contradictions.

### Pass 2 — Domain reviewer
Score B + D + E. Challenge causality, professional granularity, options, commercial logic, operational dependencies, and failure modes.

### Pass 3 — Client partner/editor
Score F + H and re-check fatal defects. Test whether a client executive can understand the recommendation quickly and whether a specialist can audit it.

## Required evaluation output
For any major client deliverable, produce an internal QA card containing:
- total score /100
- release class
- fatal defects: none / list
- lowest three scoring dimensions
- exact fixes required before release
- unresolved questions and owner
- version/date reviewed

Do not expose the QA card to the external client unless requested.
