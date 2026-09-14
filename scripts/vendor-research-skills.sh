#!/usr/bin/env bash
set -euo pipefail

# Curated research-skill vendoring for HANA's Codex repository.
# Goal: install the nine requested skill families without flattening huge catalogs
# or allowing them to override the HANA Expert Business OS business router.

ROOT="$(git rev-parse --show-toplevel)"
DEST="$ROOT/.agents/skills"
LICENSE_DEST="$ROOT/.agents/vendor-licenses"
LOCK="$ROOT/RESEARCH_SKILLS_LOCK.tsv"
TMP_BASE="$(mktemp -d)"
trap 'rm -rf "$TMP_BASE"' EXIT

mkdir -p "$DEST" "$LICENSE_DEST"
printf 'source_repo\tcommit\tinstalled_modules\n' > "$LOCK"

CURRENT_TMP=""
CURRENT_SHA=""
clone_sparse() {
  local repo="$1"; shift
  CURRENT_TMP="$TMP_BASE/${repo//\//__}"
  echo "==> Fetching $repo"
  git clone --depth 1 --filter=blob:none --sparse "https://github.com/${repo}.git" "$CURRENT_TMP"
  # Cone-mode sparse checkout keeps top-level files (including root LICENSE files)
  # while materializing only the requested directories below the repository root.
  git -C "$CURRENT_TMP" sparse-checkout set "$@"
  CURRENT_SHA="$(git -C "$CURRENT_TMP" rev-parse HEAD)"
}

copy_skill() {
  local src="$1"
  local dest_name="${2:-$(basename "$src")}"
  if [[ ! -f "$src/SKILL.md" ]]; then
    echo "ERROR: expected SKILL.md at $src" >&2
    exit 1
  fi
  rm -rf "$DEST/$dest_name"
  cp -R "$src" "$DEST/$dest_name"
}

copy_license() {
  local slug="$1"
  local source_file="$CURRENT_TMP/LICENSE"
  if [[ -f "$source_file" ]]; then
    cp "$source_file" "$LICENSE_DEST/${slug}.LICENSE"
  fi
}

lock_repo() {
  local repo="$1" modules="$2"
  printf '%s\t%s\t%s\n' "$repo" "$CURRENT_SHA" "$modules" >> "$LOCK"
}

# 1) Academic Research Skills — citation/research/paper/review pipeline.
# IMPORTANT: upstream license is CC BY-NC 4.0. Installed for non-commercial
# academic/research use only; routing policy in AGENTS.md blocks client/commercial use.
clone_sparse "Imbad0202/academic-research-skills" \
  deep-research academic-paper academic-paper-reviewer academic-pipeline
copy_skill "$CURRENT_TMP/deep-research"
copy_skill "$CURRENT_TMP/academic-paper"
copy_skill "$CURRENT_TMP/academic-paper-reviewer"
copy_skill "$CURRENT_TMP/academic-pipeline"
copy_license "academic-research-skills"
lock_repo "Imbad0202/academic-research-skills" "deep-research,academic-paper,academic-paper-reviewer,academic-pipeline"

# 2) Claude Scholar — structured literature/knowledge workflow and source validation.
clone_sparse "Galaxy-Dawn/claude-scholar" \
  skills/citation-verification \
  skills/obsidian-literature-workflow \
  skills/obsidian-source-ingestion \
  skills/research-ideation \
  skills/paper-self-review
copy_skill "$CURRENT_TMP/skills/citation-verification"
copy_skill "$CURRENT_TMP/skills/obsidian-literature-workflow"
copy_skill "$CURRENT_TMP/skills/obsidian-source-ingestion"
copy_skill "$CURRENT_TMP/skills/research-ideation"
copy_skill "$CURRENT_TMP/skills/paper-self-review"
copy_license "claude-scholar"
lock_repo "Galaxy-Dawn/claude-scholar" "citation-verification,obsidian-literature-workflow,obsidian-source-ingestion,research-ideation,paper-self-review"

# 3) nature-skills — manuscript writing/polishing/citation/source verification.
clone_sparse "Yuan1z0825/nature-skills" \
  skills/nature-writing \
  skills/nature-polishing \
  skills/nature-citation \
  skills/nature-ref-verifier \
  skills/nature-reader \
  skills/nature-shared
copy_skill "$CURRENT_TMP/skills/nature-writing"
copy_skill "$CURRENT_TMP/skills/nature-polishing"
copy_skill "$CURRENT_TMP/skills/nature-citation"
copy_skill "$CURRENT_TMP/skills/nature-ref-verifier"
copy_skill "$CURRENT_TMP/skills/nature-reader"
copy_skill "$CURRENT_TMP/skills/nature-shared"
copy_license "nature-skills"
lock_repo "Yuan1z0825/nature-skills" "nature-writing,nature-polishing,nature-citation,nature-ref-verifier,nature-reader,nature-shared"

# 4) Auto Empirical Research — curated Python empirical/causal pipeline instead of
# importing the 1,150+ catalog entries into the active namespace.
clone_sparse "brycewang-stanford/Auto-Empirical-Research-Skills" \
  skills/00.1-Full-empirical-analysis-skill_Python \
  skills/11-James-Traina-compound-science/skills/empirical-playbook
copy_skill "$CURRENT_TMP/skills/00.1-Full-empirical-analysis-skill_Python" "empirical-analysis-python"
copy_skill "$CURRENT_TMP/skills/11-James-Traina-compound-science/skills/empirical-playbook"
copy_license "auto-empirical-research-skills"
lock_repo "brycewang-stanford/Auto-Empirical-Research-Skills" "empirical-analysis-python,empirical-playbook"

# 5) Scientific Agent Skills — high-value general science + chemistry/bioinformatics subset.
clone_sparse "K-Dense-AI/scientific-agent-skills" \
  skills/scientific-writing \
  skills/scientific-critical-thinking \
  skills/scientific-visualization \
  skills/biopython \
  skills/rdkit
copy_skill "$CURRENT_TMP/skills/scientific-writing"
copy_skill "$CURRENT_TMP/skills/scientific-critical-thinking"
copy_skill "$CURRENT_TMP/skills/scientific-visualization"
copy_skill "$CURRENT_TMP/skills/biopython"
copy_skill "$CURRENT_TMP/skills/rdkit"
copy_license "scientific-agent-skills"
lock_repo "K-Dense-AI/scientific-agent-skills" "scientific-writing,scientific-critical-thinking,scientific-visualization,biopython,rdkit"

# 6) AI-Research-SKILLs — install selected AI research categories only.
# The upstream library is large; category curation keeps trigger space and context manageable.
clone_sparse "Orchestra-Research/AI-Research-SKILLs" \
  0-autoresearch-skill 01-model-architecture 03-fine-tuning 06-post-training 11-evaluation
for category in 0-autoresearch-skill 01-model-architecture 03-fine-tuning 06-post-training 11-evaluation; do
  while IFS= read -r skill_file; do
    skill_dir="$(dirname "$skill_file")"
    name="$(basename "$skill_dir")"
    # Avoid accidental overwrite if an upstream category reuses a generic folder name.
    if [[ -e "$DEST/$name" ]]; then
      name="orchestra-$name"
    fi
    copy_skill "$skill_dir" "$name"
  done < <(find "$CURRENT_TMP/$category" -type f -name SKILL.md -print | sort)
done
copy_license "ai-research-skills"
lock_repo "Orchestra-Research/AI-Research-SKILLs" "autoresearch,model-architecture,fine-tuning,post-training,evaluation categories"

# 7) codex-claude-academic-skills — Chinese-friendly STEM/MATLAB/scientific toolkit.
clone_sparse "zLanqing/codex-claude-academic-skills" \
  research-writing-skill office-academic-skill scientific-toolkit-skill
copy_skill "$CURRENT_TMP/research-writing-skill"
copy_skill "$CURRENT_TMP/office-academic-skill"
copy_skill "$CURRENT_TMP/scientific-toolkit-skill"
copy_license "codex-claude-academic-skills"
lock_repo "zLanqing/codex-claude-academic-skills" "research-writing-skill,office-academic-skill,scientific-toolkit-skill"

# 8) ARIS — autonomous iterative paper/research loop. Keep the autonomous loop
# explicit-only via policy below; do not let it silently start long-running iteration.
clone_sparse "wanshuiyin/Auto-claude-code-research-in-sleep" \
  skills/research-pipeline \
  skills/idea-discovery \
  skills/research-lit \
  skills/novelty-check \
  skills/auto-review-loop \
  skills/auto-paper-improvement-loop \
  skills/paper-writing \
  skills/paper-claim-audit
for s in research-pipeline idea-discovery research-lit novelty-check auto-review-loop auto-paper-improvement-loop paper-writing paper-claim-audit; do
  if [[ -d "$CURRENT_TMP/skills/$s" ]]; then
    copy_skill "$CURRENT_TMP/skills/$s"
  fi
done
copy_license "aris"
lock_repo "wanshuiyin/Auto-claude-code-research-in-sleep" "research-pipeline,idea-discovery,research-lit,novelty-check,auto-review-loop,auto-paper-improvement-loop,paper-writing,paper-claim-audit"

# 9) Research Paper Writing Skills — ML/CV/NLP paper structure and claim/evidence discipline.
clone_sparse "Master-cai/Research-Paper-Writing-Skills" research-paper-writing
copy_skill "$CURRENT_TMP/research-paper-writing"
copy_license "research-paper-writing-skills"
lock_repo "Master-cai/Research-Paper-Writing-Skills" "research-paper-writing"

# Safety/activation policy overlays. These files are intentionally repo-local and do
# not modify upstream SKILL.md content.
set_explicit_only() {
  local skill="$1"
  [[ -d "$DEST/$skill" ]] || return 0
  mkdir -p "$DEST/$skill/agents"
  cat > "$DEST/$skill/agents/openai.yaml" <<'YAML'
policy:
  allow_implicit_invocation: false
YAML
}

# License-sensitive or potentially long-running autonomous workflows are explicit-only.
for s in deep-research academic-paper academic-paper-reviewer academic-pipeline \
         research-pipeline auto-review-loop auto-paper-improvement-loop; do
  set_explicit_only "$s"
done

# Deterministic sanity checks.
count="$(find "$DEST" -mindepth 2 -maxdepth 2 -name SKILL.md | wc -l | tr -d ' ')"
echo "Installed/discovered SKILL.md count: $count"
if [[ "$count" -lt 30 ]]; then
  echo "ERROR: expected at least 30 active skill definitions after vendoring." >&2
  exit 1
fi

echo "Research skill vendoring complete. Lock file: $LOCK"
