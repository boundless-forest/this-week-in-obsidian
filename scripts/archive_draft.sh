#!/bin/bash

# Usage: ./scripts/archive_draft.sh drafts/2025-12-16-issue-01.md

FILE=$1

if [ -z "$FILE" ]; then
  echo "Please provide the draft file path."
  exit 1
fi

if [ ! -f "$FILE" ]; then
  echo "File not found: $FILE"
  exit 1
fi

YEAR=$(date +%Y)
ARCHIVE_DIR="archive/$YEAR"

mkdir -p "$ARCHIVE_DIR"
mv "$FILE" "$ARCHIVE_DIR/"

echo "Moved $FILE to $ARCHIVE_DIR/"
