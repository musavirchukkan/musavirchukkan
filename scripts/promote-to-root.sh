#!/usr/bin/env bash
# Copy profile/live → repo root (README, assets, workflows)
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
LIVE="$ROOT/profile/live"

if [[ ! -f "$LIVE/README.md" ]]; then
  echo "Missing $LIVE/README.md"
  exit 1
fi

cp "$LIVE/README.md" "$ROOT/README.md"
mkdir -p "$ROOT/assets" "$ROOT/.github/workflows"
cp "$LIVE/assets/"*.svg "$ROOT/assets/"
cp "$LIVE/workflows/"*.yml "$ROOT/.github/workflows/"

echo "Promoted profile/live → root"
echo "  README.md, assets/*.svg, .github/workflows/*.yml"
echo "Next: git add -A && git commit && git push"
