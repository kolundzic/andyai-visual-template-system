#!/usr/bin/env bash
set -euo pipefail

required=(
  README.md
  CONSTITUTION.md
  STYLE_GUIDE.md
  PROMPT_FORMULA.md
  TEMPLATE_INDEX.md
  QUALITY_CHECKLIST.md
  PROJECT_MAPPING.md
  templates/academic-info-cards/AVTS-001-academic-info-card.md
  templates/block-diagrams/AVTS-002-system-block-diagram.md
  templates/layered-architecture/AVTS-003-layered-architecture-map.md
  templates/multilingual-posters/AVTS-004-multilingual-academic-poster.md
  templates/evidence-cards/AVTS-005-evidence-proof-card.md
  templates/ui-dashboard-mockups/AVTS-006-ui-dashboard-mockup.md
  templates/character-guides/AVTS-007-character-guide-system.md
  templates/roadmap-timelines/AVTS-008-roadmap-timeline.md
  templates/comparison-matrices/AVTS-009-comparison-matrix.md
  templates/workflow-posters/AVTS-010-workflow-poster.md
)

for f in "${required[@]}"; do
  if [[ ! -f "$f" ]]; then
    echo "Missing required file: $f"
    exit 1
  fi
done

echo "✅ Scaffold verification passed."
