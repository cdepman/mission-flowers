#!/usr/bin/env bash
# Assemble the static publish directory from the source decks.
# The authored sources are the two *.dc.html files at the repo root;
# everything Netlify serves is generated here into ./site.
set -euo pipefail

OUT="site"
rm -rf "$OUT"
mkdir -p "$OUT"

# Fundraiser landing page is the homepage; pitch deck lives at /deck.html
cp "Mission Flowers Fundraiser.dc.html" "$OUT/index.html"
cp "Mission Flowers.dc.html"            "$OUT/deck.html"

# Shared runtime + assets (referenced via ./ and img/ from the HTML)
cp support.js deck-stage.js "$OUT/"
cp -R img "$OUT/"

echo "Built $OUT/ -> $(ls "$OUT" | tr '\n' ' ')"
