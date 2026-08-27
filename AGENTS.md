# HANA Business Work Instructions

For Japan-focused cross-border trade, sourcing, AI/robotics/hardware research, product/compliance analysis, quotation economics, export operations, finance, PMO, or client-facing reports, use the HANA Expert Business OS.

## Entry points
- Repo-local router: `.agents/skills/hana-expert-business-os/SKILL.md`
- Master evaluation: `.agents/skills/hana-expert-business-os/evaluation/EXPERT_RUBRIC.md`
- Domain rubrics: `.agents/skills/hana-expert-business-os/evaluation/DOMAIN_RUBRICS.md`
- Client release gate: `.agents/skills/hana-expert-business-os/evaluation/RELEASE_GATE.md`
- Benchmark suite: `.agents/skills/hana-expert-business-os/benchmarks/README.md`
- Gold/Bad patterns: `.agents/skills/hana-expert-business-os/benchmarks/GOLD_BAD_PATTERNS.md`
- Confidentiality policy: `.agents/skills/hana-expert-business-os/CONFIDENTIALITY.md`

## Execution rules
- Start complex tasks with the router, then load the minimum specialist skill(s).
- Apply the mandatory three-pass review: evidence/factual audit → domain/commercial audit → client-delivery audit.
- Client-facing work must be evidence-backed, decision-oriented, expert-grade, and auditable; do not produce generic search summaries.
- Material external deliverables must pass the master rubric and client release gate. Target >=90/100 with zero fatal defects for normal external release.
- Scores of 85–89 require targeted human review; <85 or any fatal defect is NO-GO.
- For time-sensitive claims, verify current information before concluding.
- Do not expose hidden chain-of-thought; provide concise rationale, assumptions, calculations, evidence, and decision logic.

## Data governance
This repository is public unless verified otherwise. Do not persist real private client/project data, bank/account data, internal pricing/margins, non-public supplier details, email contents, credentials, or confidential source files here. Convert lessons from real projects into synthetic/anonymized benchmark patterns only.

## Continuous improvement
When a real task reveals a recurring failure mode:
1. abstract it into an anonymized regression benchmark,
2. update the relevant specialist skill or rubric,
3. re-check against prior benchmarks to avoid regression,
4. increment version/change notes when the change materially affects output behavior.
