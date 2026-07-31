#!/usr/bin/env bash
# Snapshot profile/live into profile/archive/<name>
set -euo pipefail
NAME="${1:?Usage: archive-current.sh <archive-folder-name>}"
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
DEST="$ROOT/profile/archive/$NAME"
LIVE="$ROOT/profile/live"

mkdir -p "$DEST/assets" "$DEST/workflows"
cp "$LIVE/README.md" "$DEST/README.md"
cp "$LIVE/assets/"*.svg "$DEST/assets/"
cp "$LIVE/workflows/"*.yml "$DEST/workflows/"
date -u +"%Y-%m-%dT%H:%M:%SZ" > "$DEST/archived-at.txt"

echo "Archived profile/live → profile/archive/$NAME"
