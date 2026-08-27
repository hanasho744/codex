# ChatGPT / Codex Skill Index — HANA Expert Business OS

## Canonical entry
`.agents/skills/hana-expert-business-os/SKILL.md`

## Specialist skills
- `research-intelligence/SKILL.md`
- `product-supplychain-ledger/SKILL.md`
- `japan-compliance-trade/SKILL.md`
- `commercial-pricing/SKILL.md`
- `export-delivery-control/SKILL.md`
- `client-reporting-jp/SKILL.md`
- `project-control-tower/SKILL.md`
- `business-finance-analysis/SKILL.md`
- `knowledge-assetization/SKILL.md`

## Evaluation / regression layer
- `evaluation/EXPERT_RUBRIC.md` — 100-point master quality rubric
- `evaluation/DOMAIN_RUBRICS.md` — specialist diagnostic criteria
- `evaluation/QA_CARD_TEMPLATE.md` — internal QA record
- `evaluation/RELEASE_GATE.md` — external GO/NO-GO policy
- `benchmarks/README.md` — benchmark methodology
- `benchmarks/BENCHMARK_CASES.md` — B01–B09 synthetic regression cases
- `benchmarks/GOLD_BAD_PATTERNS.md` — behavioral calibration examples
- `CONFIDENTIALITY.md` — public-repository data policy

## Invocation rule
For any material business task:
1. load the router first,
2. select the minimum required specialist skill(s),
3. use source files/connected data as the factual basis when provided,
4. perform the three-pass review,
5. if external/client-facing, always add `client-reporting-jp` and run the release gate.

## External deliverable release policy
- >=90/100 + zero fatal defects: normal GO
- 85–89 + zero fatal defects: CONDITIONAL GO after targeted human review
- <85: NO-GO
- any fatal defect: NO-GO

## Natural-language routing examples
- “深挖/调查这家公司、供应商、品牌” → Router + Research Intelligence; add Product Ledger if hardware/product architecture matters.
- “这个产品日本能不能卖/需要什么认证/HS是什么” → Router + Product Ledger + Japan Compliance; add Research if external evidence is needed.
- “给客户做正式调查报告/日语报告” → relevant domain skills + Client Reporting JP + Evaluation/Release Gate.
- “这个项目怎么报价/利润多少/报价方案” → Commercial Pricing; add Compliance/Export if duty/logistics/regulatory cost matters.
- “复盘这票货/船期/报关/提单/入仓问题” → Export Delivery Control + Project Control Tower when next actions/status are needed.
- “梳理今天项目/还有多少项目/谁在等谁” → Project Control Tower.
- “分析公司流水/客户收入/项目收益” → Business Finance Analysis; do not equate bank inflow with revenue.
- “整理到Drive/Notion/台账/形成SOP” → Knowledge Assetization plus originating domain skill.

## Client-facing mandatory rule
If output is for a customer, partner, formal external presentation, or decision meeting, load `client-reporting-jp` even when the user did not explicitly name it.

## Quality baseline
Expert-grade means evidence-backed, granular, auditable, decision-oriented, commercially aware, operationally coherent, and explicit about uncertainty. Generic summaries, search-result aggregation, and polished prose without evidence do not pass.

## Confidentiality
The Skill repository itself stores methods and anonymized patterns only. Do not persist private client/project data into the public repository.
