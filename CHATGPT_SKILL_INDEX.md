# ChatGPT / Codex Skill Index — HANA Expert Business OS

## Canonical business entry
`.agents/skills/hana-expert-business-os/SKILL.md`

## Business specialist skills
- `research-intelligence/SKILL.md`
- `product-supplychain-ledger/SKILL.md`
- `japan-compliance-trade/SKILL.md`
- `commercial-pricing/SKILL.md`
- `export-delivery-control/SKILL.md`
- `client-reporting-jp/SKILL.md`
- `project-control-tower/SKILL.md`
- `business-finance-analysis/SKILL.md`
- `knowledge-assetization/SKILL.md`

## Academic / scientific research layer
See `RESEARCH_SKILL_REGISTRY.md` for sources, licenses, exact modules, and routing policy.

Core research routes after vendoring include:
- citation/source verification: `citation-verification`, `nature-ref-verifier`;
- academic end-to-end workflow: `deep-research`, `academic-paper`, `academic-paper-reviewer`, `academic-pipeline` (**non-commercial only**);
- literature/knowledge-base workflow: `obsidian-literature-workflow`, `obsidian-source-ingestion`;
- Nature-style writing/polishing: `nature-writing`, `nature-polishing`, `nature-citation`, `nature-reader`;
- empirical research: `empirical-analysis-python`, `empirical-playbook`;
- scientific reasoning/computation: `scientific-critical-thinking`, `scientific-writing`, `scientific-visualization`, `biopython`, `rdkit`;
- AI research engineering: selected Orchestra Research model-architecture, fine-tuning, post-training, autoresearch and evaluation skills;
- Chinese STEM/academic toolkit: `research-writing-skill`, `office-academic-skill`, `scientific-toolkit-skill`;
- autonomous research/paper loops: selected ARIS skills, explicit invocation only;
- ML/CV/NLP paper framework: `research-paper-writing`.

## Evaluation / regression layer
- `evaluation/EXPERT_RUBRIC.md` — 100-point master quality rubric
- `evaluation/DOMAIN_RUBRICS.md` — specialist diagnostic criteria
- `evaluation/QA_CARD_TEMPLATE.md` — internal QA record
- `evaluation/RELEASE_GATE.md` — external GO/NO-GO policy
- `benchmarks/README.md` — benchmark methodology
- `benchmarks/BENCHMARK_CASES.md` — B01–B09 synthetic regression cases
- `benchmarks/GOLD_BAD_PATTERNS.md` — behavioral calibration examples
- `CONFIDENTIALITY.md` — public-repository data policy

## Business invocation rule
For any material business task:
1. load the HANA router first,
2. select the minimum required specialist skill(s),
3. use source files/connected data as the factual basis when provided,
4. perform the three-pass review,
5. if external/client-facing, always add `client-reporting-jp` and run the release gate.

Academic research skills supplement method/evidence/writing capability; they do not replace the HANA business router for commercial work.

## Research invocation rule
Prefer one primary method skill + one verification/audit skill + one writing/presentation skill. Avoid loading several overlapping manuscript-writing frameworks simultaneously.

For research claims, verification precedes polish. For autonomous loops, define stop conditions, budget, output path and human approval before execution.

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
- “验证这些论文/引用是否真实” → Citation Verification + Nature Ref Verifier; use Academic Research Skills only for non-commercial research.
- “做一份实证研究/DID/IV/RDD/因果推断” → Empirical Analysis Python + Scientific Critical Thinking.
- “研究某个深度学习架构/训练方案” → Orchestra AI Research skill(s) + Scientific Critical Thinking + evaluation skill.
- “润色成 Nature 风格” → Nature Polishing; do not rewrite unsupported scientific claims.
- “自动循环改论文” → ARIS explicit loop + claim/citation audit + human review.

## Client-facing mandatory rule
If output is for a customer, partner, formal external presentation, or decision meeting, load `client-reporting-jp` even when the user did not explicitly name it. Do not use CC BY-NC research modules for commercial client work.

## Quality baseline
Expert-grade means evidence-backed, granular, auditable, decision-oriented, commercially aware, operationally coherent, and explicit about uncertainty. Generic summaries, search-result aggregation, and polished prose without evidence do not pass.

## Confidentiality
The Skill repository itself stores methods and anonymized patterns only. Do not persist private client/project data into the public repository.
