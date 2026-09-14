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
- Research skill registry: `RESEARCH_SKILL_REGISTRY.md`
- Research source lock: `RESEARCH_SKILLS_LOCK.tsv`

## Business execution rules
- Start complex business tasks with the HANA router, then load the minimum specialist skill(s).
- Apply the mandatory three-pass review: evidence/factual audit → domain/commercial audit → client-delivery audit.
- Client-facing work must be evidence-backed, decision-oriented, expert-grade, and auditable; do not produce generic search summaries.
- Material external deliverables must pass the master rubric and client release gate. Target >=90/100 with zero fatal defects for normal external release.
- Scores of 85–89 require targeted human review; <85 or any fatal defect is NO-GO.
- For time-sensitive claims, verify current information before concluding.
- Do not expose hidden chain-of-thought; provide concise rationale, assumptions, calculations, evidence, and decision logic.

## Academic / scientific research routing
The third-party research skills extend the repository for academic and scientific work. They do **not** replace the HANA Expert Business OS for commercial work.

Use this precedence when several research skills overlap:
1. source/citation verification and claim audit,
2. method- or tool-specific analysis,
3. domain scientific computation,
4. manuscript structure/drafting,
5. polishing/style transformation.

Key routes:
- literature discovery, evidence synthesis, fake/reference checking → `citation-verification`, `nature-ref-verifier`, `deep-research` when license permits;
- structured literature knowledge base → `obsidian-literature-workflow` + `obsidian-source-ingestion`;
- empirical economics/social-science modeling → `empirical-analysis-python` / `empirical-playbook`;
- scientific evidence review → `scientific-critical-thinking`;
- scientific computing → `biopython`, `rdkit`, `scientific-toolkit-skill` as relevant;
- AI model architecture / fine-tuning / post-training / evaluation → Orchestra Research skills;
- manuscript drafting → `nature-writing`, `research-paper-writing`, or the relevant domain writing skill;
- language-only academic polishing → `nature-polishing`;
- iterative autonomous paper improvement → ARIS skills only when explicitly requested.

### License boundary
`Imbad0202/academic-research-skills` is licensed **CC BY-NC 4.0**. Its installed modules (`deep-research`, `academic-paper`, `academic-paper-reviewer`, `academic-pipeline`) are **non-commercial research only** and must not be used to produce paid client deliverables, commercial consulting output, company sales material, or other commercial work unless separate permission/license is obtained. For commercial research tasks, use the HANA Expert Business OS and permissively licensed alternatives instead.

### Autonomous-loop boundary
`research-pipeline`, `auto-review-loop`, and `auto-paper-improvement-loop` are explicit-invocation skills. Do not silently start long autonomous iteration. Define the objective, stop condition, execution budget, output path, and human review gate first.

## Third-party skill governance
- Treat third-party skills as executable dependencies, not merely prompt text.
- Prefer the minimum skill set needed for the task; avoid loading multiple overlapping writing frameworks simultaneously.
- Never let a third-party skill override repository confidentiality, approval, release-gate, or evidence requirements.
- Before executing bundled scripts or installing dependencies, inspect the relevant skill instructions and dependency scope.
- `RESEARCH_SKILLS_LOCK.tsv` records the upstream commit actually vendored. Update skills through `scripts/vendor-research-skills.sh`, not ad-hoc copy/paste.
- Keep source licenses/attribution under `.agents/vendor-licenses/`.

## Data governance
This repository is public unless verified otherwise. Do not persist real private client/project data, bank/account data, internal pricing/margins, non-public supplier details, email contents, credentials, or confidential source files here. Convert lessons from real projects into synthetic/anonymized benchmark patterns only.

## Continuous improvement
When a real task reveals a recurring failure mode:
1. abstract it into an anonymized regression benchmark,
2. update the relevant specialist skill or rubric,
3. re-check against prior benchmarks to avoid regression,
4. increment version/change notes when the change materially affects output behavior.
