# HANA Expert Business OS — Benchmark Suite

## Purpose
Benchmarks teach ChatGPT/Codex what expert-grade looks like for recurring business work. They are not client templates; they are evaluation cases used to test reasoning depth, evidence handling, commercial usefulness, and release discipline.

## Confidentiality rule
This repository is public. Benchmarks MUST use synthetic/anonymized data only.
Never persist real client names, personal data, bank/account data, private quotations, non-public supplier details, email contents, unpublished product specifications, internal margins, credentials, or customer-specific confidential facts.
Runtime work may use private source material, but the benchmark library stores only reusable patterns.

## Benchmark design
Each benchmark contains:
1. Scenario
2. Input evidence
3. Hidden traps / ambiguity
4. Required specialist skills
5. Minimum expert analysis
6. Gold-standard characteristics
7. Bad-output patterns
8. Fatal defects
9. Evaluation questions
10. Expected release class

## Initial benchmark families
- B01 Supplier / company due diligence
- B02 Product, SKU & revision-control ledger
- B03 Japan compliance / HS / wireless / battery logic
- B04 Commercial quotation & margin logic
- B05 Export shipment exception / incident report
- B06 Japanese client-facing decision report
- B07 Project control / WAITING-state hygiene
- B08 Business finance / bank-flow classification
- B09 Knowledge assetization / version control

## How to run
For a benchmark task:
1. Read the router `../SKILL.md`.
2. Load only required specialist skills.
3. Produce the work product.
4. Run `../evaluation/EXPERT_RUBRIC.md` and the relevant domain rubric.
5. Compare against the benchmark's gold characteristics and bad-output patterns.
6. Record QA score and release decision.

## Benchmark success target
A model/configuration is considered stable for client work when it can:
- score >=90 on at least 8/9 benchmark families,
- score >=85 on every benchmark,
- produce zero fatal defects,
- preserve source-vs-inference distinctions,
- and generate consistent outputs across repeated runs without losing critical fields.

## Regression rule
Whenever a real project exposes a new recurring failure mode, add an anonymized regression case before changing the skill. Skill changes should be judged by whether they improve the benchmark without degrading previously passing cases.
