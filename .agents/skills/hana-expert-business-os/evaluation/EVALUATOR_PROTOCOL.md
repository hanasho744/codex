# Evaluator Protocol

## Purpose
Provide a repeatable review method for ChatGPT/Codex after a material business deliverable is drafted.

## Reviewer posture
Evaluate the work as if you are simultaneously:
1. a fact-checking research lead,
2. a domain specialist in the relevant trade/product/commercial field,
3. a partner-level reviewer responsible for what is sent to the client.

Do not reward length, formatting, or confidence by themselves.

## Inputs
- task/request
- source files and connected-data outputs used
- research sources used
- draft deliverable
- relevant specialist Skill(s)
- `EXPERT_RUBRIC.md`
- relevant section of `DOMAIN_RUBRICS.md`
- relevant benchmark(s), if any

## Evaluation sequence

### Stage 1 — Requirement coverage
Build a checklist of every explicit user/client requirement.
Mark each: Answered / Partially Answered / Unresolved / Not Applicable.
Any omitted material requirement is a release blocker until explicitly handled.

### Stage 2 — Claim audit
Extract material claims that drive decisions.
For each claim record:
- claim
- evidence/source
- source date
- evidence grade
- fact / source statement / estimate / inference / recommendation
- conflicting evidence
- decision impact if wrong

Prioritize claims that affect compliance, supplier selection, schedule, price, profitability, product identity, or customer commitment.

### Stage 3 — Number audit
Recalculate material numbers independently where possible.
Check:
- formula
- quantity
- unit
- currency
- FX basis/date
- tax basis
- Incoterm
- time period
- rounding
- margin vs markup
- totals/subtotals

### Stage 4 — Domain challenge
Ask:
- Is the exact entity/model/SKU/revision known?
- What professional layer is still missing?
- Which upstream/downstream dependency could overturn the conclusion?
- What would a regulator, engineer, sourcing manager, forwarder, finance manager, or client procurement team challenge?
- Is mandatory law being mixed with common practice or customer preference?
- Are supplier claims presented with appropriate confidence?

### Stage 5 — Decision challenge
Test:
- What decision is the document supposed to enable?
- Are alternatives genuinely compared?
- Does the recommendation follow from the evidence?
- Under what assumption would the recommendation change?
- What is the next irreversible decision gate?

### Stage 6 — Client readability / Japanese review
Test the first page/section independently from the appendix.
For Japanese output check:
- natural business Japanese
- terminology consistency
- neutral/non-accusatory tone
- confirmed vs provisional vs unresolved distinctions
- no vague assurance where a gate remains

### Stage 7 — Confidentiality and external firewall
Check that external material contains no internal margin/floor price, negotiation intelligence, unrelated private data, confidential supplier detail, or raw internal blame/speculation.

### Stage 8 — Score and release decision
Complete the 100-point rubric and QA Card.
Apply fatal-defect rules.
Return internal decision:
- GO
- CONDITIONAL GO
- NO-GO

## Required review output format
### Evaluation Summary
- Score: X/100
- Release: GO / CONDITIONAL GO / NO-GO
- Fatal defects: None / list
- Requirement coverage: X/Y fully answered

### P0 fixes — release blockers
Only issues that must be fixed before external release.

### P1 fixes — expert-quality gaps
Issues that materially improve rigor or decision usefulness.

### P2 refinements — presentation/asset improvements
Non-blocking improvements.

### Unresolved evidence
List exact missing evidence and who/what should confirm it.

### Re-review scope
State which sections/claims must be re-evaluated after fixes; do not automatically rework unrelated sections.

## Anti-patterns
- giving every draft 90+
- grading style more heavily than correctness
- vague feedback such as “add more detail”
- changing source facts to make the report internally consistent
- creating new unsupported facts during review
- hiding unresolved issues behind polished wording

## Calibration rule
Use `benchmarks/GOLD_BAD_PATTERNS.md` to calibrate strictness. A report that resembles a BAD pattern in a material area should not receive an Expert release class until corrected.
