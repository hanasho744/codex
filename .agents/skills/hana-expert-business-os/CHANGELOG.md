# HANA Expert Business OS — Changelog

## v1.1.0 — 2026-08-27
### Added
- 100-point Expert Master Evaluation Rubric
- nine domain-specific diagnostic rubrics
- fatal-defect NO-GO rules
- internal QA Card template
- repeatable Evaluator Protocol
- external Client Deliverable Release Gate
- nine synthetic benchmark families (B01–B09)
- Gold vs Bad behavioral calibration patterns
- deterministic Routing Matrix
- machine-readable `MANIFEST.yaml`
- public-repository confidentiality/data policy

### Changed
- main Router now references routing, evaluation, release, benchmark, confidentiality, and continuous-improvement layers
- Client Reporting skill now requires evaluation/release review for material external deliverables
- `AGENTS.md` now routes Codex work through the Expert Business OS and applies score thresholds
- `CHATGPT_SKILL_INDEX.md` now includes natural-language routing and evaluation entry points

### Quality policy
- normal external GO: >=90/100 and zero fatal defects
- 85–89: conditional human review
- <85 or any fatal defect: NO-GO

### Data policy
Because the repository is public, benchmark content is synthetic/anonymized. Real customer/project confidential data is not persisted in the Skill repository.

## v1.0.0 — 2026-08-27
### Initial architecture
- main HANA Expert Business OS router
- Research Intelligence
- Product & Supply-Chain Ledger
- Japan Compliance & Trade
- Commercial Pricing
- Export Delivery Control
- Client Reporting & Japanese Delivery
- Project Control Tower
- Business Finance Analysis
- Knowledge Assetization
- three-pass review standard
- ChatGPT/Codex skill index and repo-level AGENTS instructions
