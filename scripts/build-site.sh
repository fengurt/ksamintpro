#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
OUT="${1:-$ROOT/_site}"
mkdir -p "$OUT/assets" "$OUT/export"
cp "$ROOT/site.css" "$OUT/"
cp "$ROOT/assets/guo-feng.png" "$OUT/assets/"
MDFMT="markdown+markdown_attribute+header_attributes"
pandoc "$ROOT/profileref.md" \
  --from "$MDFMT" \
  --standalone \
  --css=site.css \
  --metadata title="郭峰 GUO Feng — Profile" \
  -o "$OUT/index.html"
pandoc "$ROOT/event.md" \
  --from "$MDFMT" \
  --standalone \
  --css=site.css \
  --metadata title="郭峰 · OPC Global Session — 2026-06-13" \
  -o "$OUT/event.html"
cp "$ROOT/profileref.md" "$ROOT/event.md" "$OUT/export/"
cp "$OUT/index.html" "$OUT/export/profile.html"
cp "$OUT/event.html" "$OUT/export/event.html"
touch "$OUT/.nojekyll"
echo "Built into $OUT"
