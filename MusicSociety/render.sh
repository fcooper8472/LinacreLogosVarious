#!/usr/bin/env bash
# Render every logo SVG to PNGs at high (4096), medium (1024) and low (256) resolution.
# The SVGs are the masters; re-run this after changing any of them.
# Requires rsvg-convert (librsvg: `apt install librsvg2-bin` / `brew install librsvg`).
set -euo pipefail

here="$(cd "$(dirname "$0")" && pwd)"

for svg in "$here"/colour/*.svg "$here"/greyscale/*.svg "$here"/one-colour/*.svg; do
  for size in 4096 1024 256; do
    png="${svg%.svg}-${size}.png"
    rsvg-convert --width "$size" --height "$size" --output "$png" "$svg"
    echo "${png#"$here"/}"
  done
done
