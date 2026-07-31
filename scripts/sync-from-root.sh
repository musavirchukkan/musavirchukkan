#!/usr/bin/env bash
# Copy repo root → profile/live (keep folder in sync after editing root)
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
LIVE="$ROOT/profile/live"

cp "$ROOT/README.md" "$LIVE/README.md"
mkdir -p "$LIVE/assets" "$LIVE/workflows"
cp "$ROOT/assets/"*.svg "$LIVE/assets/"
cp "$ROOT/.github/workflows/"*.yml "$LIVE/workflows/"

echo "Synced root → profile/live"
