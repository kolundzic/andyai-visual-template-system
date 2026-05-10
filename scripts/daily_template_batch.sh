#!/usr/bin/env bash
set -euo pipefail

COUNT="${1:-10}"
DATE="$(date +%Y-%m-%d)"
BATCH_DIR="batches/daily-${DATE}-${COUNT}"
mkdir -p "$BATCH_DIR"

cat > "$BATCH_DIR/README.md" <<EOF
# Daily Template Batch — ${DATE}

Requested count: ${COUNT}

Use this folder for daily original AndyAI visual template expansions.

Checklist:
- [ ] Add template files
- [ ] Update TEMPLATE_INDEX.md
- [ ] Update PROJECT_MAPPING.md where needed
- [ ] Verify originality
- [ ] Commit and tag when ready
EOF

echo "✅ Created daily batch folder: $BATCH_DIR"
