#!/bin/bash

# Usage: ./new-experiment.sh <name> <lang1> [lang2] ...

NAME=$1
shift
LANGS=("$@")

if [ -z "$NAME" ] || [ ${#LANGS[@]} -eq 0 ]; then
    echo "Usage: $0 <name> <lang1> [lang2] ..."
    exit 1
fi

DEST="experiments/$NAME"
TEMPLATE="templates/experiment"

if [ -d "$DEST" ]; then
    echo "Already exists: $DEST"
    exit 1
fi

cp -r "$TEMPLATE" "$DEST"

# Rename data-xx to actual languages
for LANG in "${LANGS[@]}"; do
    cp -r "$DEST/data-xx" "$DEST/data-$LANG"
done
rm -rf "$DEST/data-xx"

echo "Created: $DEST"
