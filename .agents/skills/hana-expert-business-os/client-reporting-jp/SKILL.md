# Client Reporting & Japanese Delivery — Expert Standard

## Use for
Any client-facing report, proposal, briefing, comparison, due-diligence memo, technical confirmation document, incident report, Japanese business deliverable, or executive summary.

## Core rule
The document must work for a client executive and for a specialist reviewer at the same time: decision clarity at the front, auditable depth behind it.

## Mandatory architecture
1. Executive Summary / 結論
2. Decision required / client implication
3. Scope, assumptions, date/version
4. Core findings
5. Quantitative comparison / evidence tables
6. Detailed domain analysis
7. Risks, unresolved items, limitations
8. Recommendation / options
9. Next actions, owner, required confirmations
10. Appendix: evidence, methodology, definitions, source list

## First-page standard
The first page must state:
- what was investigated
- most important 3–5 findings
- recommended direction
- material risk / unresolved blocker
- next decision/action
A reader should understand the management implication without reading the appendix.

## Expert-detail standard
Do not replace detail with adjectives. Prefer exact fields, numbers, versions, dates, model numbers, evidence status, comparison basis, and causal explanation.

## Japanese localization
- Write natural Japanese business prose, not direct Chinese syntax.
- Use neutral, factual language and appropriate keigo.
- For technical/trade matters use established terminology: 仕様、適合性、原産国、輸入者、適用開始ロット、量産、検収、納期、船積み、通関、改訂、根拠資料 etc.
- Avoid unnecessary self-effacement, repeated apologies, and vague phrases such as “問題ないと思います”.
- Separate `確認済み`, `現時点の認識`, `要確認`, and `当社提案`.

## Internal vs external firewall
External version must remove or transform:
- internal margins/floor price
- supplier negotiation comments
- blame language
- unverified rumors
- unnecessary internal company/person data
- raw research noise
Internal version may contain these with evidence/confidence labels.

## Tables
Every comparison table should specify common dimensions and normalized units. Avoid cells containing mini-essays when a structured field is possible. Include `Source/Evidence` or evidence appendix for important claims.

## Visual evidence
Use real product/company/factory/process images only when they add evidentiary or explanatory value. Captions must identify what the image proves and its date/source when relevant. Do not use decorative stock imagery in expert reports.

## QA before delivery
- conclusion supported by body/evidence
- all totals/currencies/taxes checked
- model/company names consistent
- no stale version references
- no contradictory dates
- no unsupported “best/leading/unique” claims
- no internal-only information leakage
- all requested questions answered or explicitly marked unresolved

## Mandatory release evaluation
For material external deliverables:
1. score the output with `../evaluation/EXPERT_RUBRIC.md`,
2. apply the relevant section of `../evaluation/DOMAIN_RUBRICS.md`,
3. complete `../evaluation/QA_CARD_TEMPLATE.md` internally,
4. pass `../evaluation/RELEASE_GATE.md`.

Default release rule:
- >=90/100 and zero fatal defects: GO
- 85–89: CONDITIONAL GO only after targeted human review
- <85: NO-GO / rework
- any fatal defect: NO-GO regardless of score

The external client should not receive the internal QA score/card unless explicitly requested.

## Benchmark calibration
When the task resembles a recurring pattern, compare behavior against `../benchmarks/BENCHMARK_CASES.md` and `../benchmarks/GOLD_BAD_PATTERNS.md`. Do not copy benchmark wording mechanically; use it to calibrate evidence discipline, granularity, and decision quality.

## Output tone
Professional consulting / engineering-commercial hybrid. Concise at executive level; highly granular in appendices and evidence tables.
