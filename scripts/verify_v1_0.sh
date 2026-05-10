#!/usr/bin/env bash
set -euo pipefail

echo "🔵 Verifying AndyAI Visual Template System v1.0.0..."

required=(
  "docs/releases/RELEASE_NOTES_v1.0.0.md"
  "docs/operations/TAP_TAP_SEMAFOR_STANDARD.md"
  "batches/batch-002/README.md"
  "batches/batch-002/BATCH_002_INDEX.md"
  "TEMPLATE_MASTER_INDEX_v1.0.md"
  "PROJECT_TEMPLATE_ROUTER_v1.0.md"
)

for f in "${required[@]}"; do
  if [[ ! -f "$f" ]]; then
    echo "🔴 Missing required file: $f"
    exit 1
  fi
done

for n in $(seq 11 40); do
  id="$(printf 'AVTS-%03d' "$n")"
  if ! grep -R "$id" templates batches TEMPLATE_MASTER_INDEX_v1.0.md PROJECT_TEMPLATE_ROUTER_v1.0.md >/dev/null 2>&1; then
    echo "🔴 Missing template ID reference: $id"
    exit 1
  fi
done

count="$(find templates -type f -name 'AVTS-*.md' | wc -l | tr -d ' ')"
if [[ "$count" -lt 40 ]]; then
  echo "🔴 Expected at least 40 AVTS template files, found $count"
  exit 1
fi

if ! grep -q "Downloads is storage" docs/operations/TAP_TAP_SEMAFOR_STANDARD.md; then
  echo "🔴 TAP-TAP SEMAFOR standard missing workshop rule"
  exit 1
fi

echo "🟢 v1.0.0 verification passed."
echo "🟢 Template files found: $count"
