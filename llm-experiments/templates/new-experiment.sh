#!/bin/bash

# Usage: ./templates/new-experiment.sh <dir-name> <slug> <lang1> [lang2] ...
#
# Example:
#   ./templates/new-experiment.sh 2026-03-15-prompt-injection-resistance PIR en
#   ./templates/new-experiment.sh 2026-03-15-bilingual-empathy-test BET ja en
#
# The script will:
#   1. Create the experiment directory from template
#   2. Auto-assign the next sequential EXP-NNN ID
#   3. Generate meta.yaml with known fields (fill domain/title manually)
#   4. Append an entry to experiments/registry.yaml

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
ROOT_DIR="$(dirname "$SCRIPT_DIR")"

if [ $# -lt 3 ]; then
    echo "Usage: $0 <dir-name> <slug> <lang1> [lang2] ..."
    echo ""
    echo "  dir-name : YYYY-MM-DD-identifier (e.g. 2026-03-15-prompt-injection-resistance)"
    echo "  slug     : 2-4 letter hint (e.g. PIR). Need not be unique; ID is the unique key."
    echo "  lang     : Language code(s) (e.g. en, ja)"
    echo ""
    echo "Example:"
    echo "  $0 2026-03-15-prompt-injection-resistance PIR en"
    exit 1
fi

NAME=$1
SLUG=$2
shift 2
LANGS=("$@")

DEST="$ROOT_DIR/experiments/$NAME"
TEMPLATE="$ROOT_DIR/templates/experiment"
REGISTRY="$ROOT_DIR/experiments/registry.yaml"

if [ -d "$DEST" ]; then
    echo "Error: Already exists: $DEST"
    exit 1
fi

# --- Auto-assign next ID ---

if [ -f "$REGISTRY" ]; then
    LAST_NUM=$(grep -oP 'id: EXP-\K[0-9]+' "$REGISTRY" | sort -n | tail -1)
    if [ -z "$LAST_NUM" ]; then
        LAST_NUM=0
    fi
else
    LAST_NUM=0
fi

NEXT_NUM=$((LAST_NUM + 1))
NEXT_ID=$(printf "EXP-%03d" "$NEXT_NUM")

# --- Extract date from directory name ---

DATE=$(echo "$NAME" | grep -oP '^\d{4}-\d{2}-\d{2}' || echo "__DATE__")

# --- Derive a rough title from directory name ---

TITLE_RAW=$(echo "$NAME" | sed 's/^[0-9]\{4\}-[0-9]\{2\}-[0-9]\{2\}-//' | sed 's/-/ /g')
TITLE=$(echo "$TITLE_RAW" | sed 's/\b\(.\)/\u\1/g')

# --- Create directory from template ---

cp -r "$TEMPLATE" "$DEST"

for LANG in "${LANGS[@]}"; do
    cp -r "$DEST/data-xx" "$DEST/data-$LANG"
done
rm -rf "$DEST/data-xx"

# --- Write meta.yaml ---

LANG_STR="${LANGS[0]}"

cat > "$DEST/meta.yaml" <<EOF
id: ${NEXT_ID}
slug: ${SLUG}
title: "${TITLE}"
date: ${DATE}
domain: __DOMAIN__
language: ${LANG_STR}
framework: 
models: []
EOF

# --- Append to registry.yaml ---

NEXT_AFTER=$((NEXT_NUM + 1))
NEXT_AFTER_ID=$(printf "EXP-%03d" "$NEXT_AFTER")
if [ -f "$REGISTRY" ]; then
    sed -i "s/^# Next available ID: .*/# Next available ID: ${NEXT_AFTER_ID}/" "$REGISTRY"
fi

cat >> "$REGISTRY" <<EOF

- id: ${NEXT_ID}
  slug: ${SLUG}
  dir: ${NAME}
  title: "${TITLE}"
  date: ${DATE}
  domain: __DOMAIN__
  language: ${LANG_STR}
  framework: 
  models: []
EOF

echo "Created: ${DEST}"
echo "     ID: ${NEXT_ID}-${SLUG}"
echo ""
echo "TODO: Edit meta.yaml and registry.yaml to fill in:"
echo "  - domain (e.g. creative, technical, ethics)"
echo "  - title (auto-derived: \"${TITLE}\" -- refine if needed)"
echo "  - framework (e.g. CLEAR v1.1)"
echo "  - models"
