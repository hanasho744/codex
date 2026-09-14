# HANA Research Skill Registry

This registry documents the curated academic/scientific skill layer vendored into `.agents/skills/` by `scripts/vendor-research-skills.sh`.

The design goal is **capability coverage with progressive disclosure**, not installing every child skill from every upstream catalog. Large suites are intentionally curated to reduce trigger collisions, repository bloat, and contradictory instructions.

## Installed families

| Requested family | Canonical source | Curated installation | Role in HANA stack | License / governance |
|---|---|---|---|---|
| Academic Research Skills | `Imbad0202/academic-research-skills` | `deep-research`, `academic-paper`, `academic-paper-reviewer`, `academic-pipeline` | research → write → review → revise workflow; evidence/citation discipline | **CC BY-NC 4.0**; non-commercial only; explicit invocation |
| Claude Scholar | `Galaxy-Dawn/claude-scholar` | `citation-verification`, `obsidian-literature-workflow`, `obsidian-source-ingestion`, `research-ideation`, `paper-self-review` | literature ingestion, structured research KB, source validation, self-review | MIT; Zotero/Obsidian-specific flows still require their external integrations when used |
| nature-skills | `Yuan1z0825/nature-skills` | `nature-writing`, `nature-polishing`, `nature-citation`, `nature-ref-verifier`, `nature-reader`, `nature-shared` | Nature-style writing/polishing, citation/reference verification, paper reading | Apache-2.0 |
| Auto Empirical | `brycewang-stanford/Auto-Empirical-Research-Skills` | `empirical-analysis-python`, `empirical-playbook` | social-science/economics empirical analysis, causal inference, robustness | CC BY-SA 4.0; curated from 1,150+ catalog rather than flattening entire catalog |
| Scientific Agent Skills | `K-Dense-AI/scientific-agent-skills` | `scientific-writing`, `scientific-critical-thinking`, `scientific-visualization`, `biopython`, `rdkit` | general scientific reasoning/figures plus bioinformatics and cheminformatics | upstream exposes license metadata at skill level; preserve bundled notices and review each skill before dependency execution |
| AI-Research-SKILLs | `Orchestra-Research/AI-Research-SKILLs` | all discovered skills in `0-autoresearch-skill`, `01-model-architecture`, `03-fine-tuning`, `06-post-training`, `11-evaluation` | AI/deep-learning model architecture, training/post-training, research automation and evaluation | MIT; selected categories only, not all 98+ skills |
| codex-claude-academic-skills | `zLanqing/codex-claude-academic-skills` | `research-writing-skill`, `office-academic-skill`, `scientific-toolkit-skill` | Chinese-friendly academic writing, office artifacts, MATLAB/Python scientific computing | MIT |
| ARIS | `wanshuiyin/Auto-claude-code-research-in-sleep` | `research-pipeline`, `idea-discovery`, `research-lit`, `novelty-check`, `auto-review-loop`, `auto-paper-improvement-loop`, `paper-writing`, `paper-claim-audit` when present upstream | autonomous research/paper iteration and review loops | MIT; autonomous loops are explicit-only and require budget/stop condition |
| Research Paper Writing Skills | `Master-cai/Research-Paper-Writing-Skills` | `research-paper-writing` | ML/CV/NLP paper structure, narrative and claim/evidence alignment | MIT |

## Important corrections to the original nine-item note

The note is directionally useful, but several labels are broader than the actual repositories:

1. **Academic Research Skills** is not only a fake-citation detector; it is an end-to-end academic pipeline. The citation-verification role is shared with Claude Scholar and `nature-ref-verifier`.
2. **Claude Scholar** supports structured literature workflows, but full Zotero batch ingestion depends on the Zotero/knowledge-base integration layer; installing the skill alone does not create that external connection.
3. **nature-skills** now covers much more than language polishing. We install the writing, polishing, citation, reference-verification and reader modules while keeping its shared reference package.
4. **Auto Empirical** is a very large catalog. Installing 1,150+ entries directly would be poor skill governance, so HANA installs the Python empirical pipeline plus the empirical-method playbook as the default active set.
5. **Scientific Agent Skills** is also a broad scientific-computing collection. HANA installs a representative high-value subset rather than every chemistry/biology tool.
6. **AI-Research-SKILLs** is resolved to the maintained `Orchestra-Research/AI-Research-SKILLs` repository, which is specifically oriented to AI research/engineering. This avoids confusing it with similarly named generic literature-workflow repositories.
7. **ARIS** is not merely a night-time paper editor. It includes research, novelty, claim auditing and autonomous review loops; long loops are therefore gated.

## Routing principles

Use **one primary method skill + one verification skill + one presentation/writing skill** when possible. Avoid activating several overlapping writing frameworks at the same time.

Recommended chains:

- Literature review: `citation-verification` → `obsidian-literature-workflow` → `paper-self-review`.
- Scientific manuscript: domain/method skill → `nature-writing` → `nature-ref-verifier` → `nature-polishing`.
- Empirical paper: `empirical-analysis-python` → `scientific-critical-thinking` → `research-paper-writing` or `nature-writing`.
- AI research: Orchestra model/training skill → Orchestra evaluation skill → `scientific-critical-thinking` → `research-paper-writing`.
- Autonomous paper iteration: explicit ARIS loop → citation/claim audit → human review; never allow an unbounded loop.

## Update and provenance

Run:

```bash
bash scripts/vendor-research-skills.sh
```

The script writes `RESEARCH_SKILLS_LOCK.tsv` with the exact upstream commit resolved at vendoring time. GitHub Actions uses the same script so updates are reviewable and reproducible at the repository level.

Because this repository is public, keep confidential datasets, unpublished client documents, customer names, pricing, internal supplier data, credentials, and email contents outside the Skill repository.
