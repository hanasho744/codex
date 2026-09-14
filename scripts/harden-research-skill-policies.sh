#!/usr/bin/env bash
set -euo pipefail

ROOT="$(git rev-parse --show-toplevel)"
DEST="$ROOT/.agents/skills"

set_explicit_only() {
  local skill="$1"
  [[ -d "$DEST/$skill" ]] || return 0
  mkdir -p "$DEST/$skill/agents"
  cat > "$DEST/$skill/agents/openai.yaml" <<'YAML'
policy:
  allow_implicit_invocation: false
YAML
}

# Long-running autonomous or license-constrained skills must never auto-trigger.
for skill in \
  deep-research \
  academic-paper \
  academic-paper-reviewer \
  academic-pipeline \
  0-autoresearch-skill \
  research-pipeline \
  auto-review-loop \
  auto-paper-improvement-loop; do
  set_explicit_only "$skill"
done

echo "Applied explicit-invocation policy overlays."
