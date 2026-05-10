#!/usr/bin/env bash
set -euo pipefail

echo "🔵 Verifying AndyAI Visual Template System v0.2.0..."

required=(
  "STYLE_FAMILIES_INDEX.md"
  "TEMPLATE_INDEX.md"
  "PROJECT_MAPPING.md"
  "docs/releases/RELEASE_NOTES_v0.2.0.md"
  "batches/batch-001/BATCH_001_INDEX.md"
  "templates/academic-info-cards/AVTS-001-academic-signal-card.md"
  "templates/block-diagrams/AVTS-002-governed-system-block-flow.md"
  "templates/layered-architecture/AVTS-003-layered-intelligence-architecture.md"
  "templates/multilingual-posters/AVTS-004-multilingual-executive-poster.md"
  "templates/evidence-cards/AVTS-005-evidence-proof-status-card.md"
  "templates/ui-dashboard-mockups/AVTS-006-mission-control-dashboard-mockup.md"
  "templates/character-guides/AVTS-007-agent-guide-character-sheet.md"
  "templates/roadmap-timelines/AVTS-008-release-roadmap-timeline.md"
  "templates/comparison-matrices/AVTS-009-tool-decision-matrix.md"
  "templates/workflow-posters/AVTS-010-full-workflow-story-poster.md"
)

for f in "${required[@]}"; do
  if [[ ! -f "$f" ]]; then
    echo "🔴 Missing required file: $f"
    exit 1
  fi
done

for id in AVTS-001 AVTS-002 AVTS-003 AVTS-004 AVTS-005 AVTS-006 AVTS-007 AVTS-008 AVTS-009 AVTS-010; do
  if ! grep -R "$id" TEMPLATE_INDEX.md templates batches >/dev/null 2>&1; then
    echo "🔴 Template ID missing from index/templates: $id"
    exit 1
  fi
done

if ! grep -q "Japanese Future Academic" STYLE_FAMILIES_INDEX.md; then
  echo "🔴 Style family index missing Japanese Future Academic"
  exit 1
fi

echo "🟢 v0.2.0 verification passed."
