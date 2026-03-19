#!/bin/bash

set -e

echo "Enter note name (format: phase/01_topic_name):"
read name

# Enforce naming format
if [[ "$name" != */* ]]; then
  echo "Error: Use format phase/topic_name"
  exit 1
fi

# Optional: append date (uncomment if you want)
# DATE=$(date +%Y%m%d)
# name="${name}_${DATE}"

LATEX_PATH="latex/$name.tex"
PDF_PATH="pdf/$name.pdf"

# Prevent overwrite
if [ -f "$LATEX_PATH" ]; then
  echo "Error: Note already exists."
  exit 1
fi

# Ensure PDF exists
if [ ! -f build/main.pdf ]; then
  echo "Error: build/main.pdf not found. Compile first."
  exit 1
fi

# Create directories
mkdir -p "$(dirname "$LATEX_PATH")"
mkdir -p "$(dirname "$PDF_PATH")"

# Build


# Move files
mv main.tex "$LATEX_PATH"
mv build/main.pdf "$PDF_PATH"

# Clean build directory
rm -rf build/*

# Restore template
cp _template.tex main.tex

# Log completion
echo "$(date +%Y-%m-%d) - $name" >> notes.log

echo "Saved:"
echo "  $LATEX_PATH"
echo "  $PDF_PATH"
echo "Next note ready."