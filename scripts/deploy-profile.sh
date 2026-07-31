#!/usr/bin/env bash
# Deploy profile/live to a SEPARATE musavirchukkan/musavirchukkan repo
# (Use this only if you keep cursor-cloud and profile as two repos.)
# If you renamed this repo to musavirchukkan, use scripts/promote-to-root.sh instead.
set -euo pipefail

REPO="${PROFILE_REPO:-$HOME/musavirchukkan-profile}"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
SOURCE="$ROOT/profile/live"

if [[ ! -d "$SOURCE" ]]; then
  echo "Missing $SOURCE"
  exit 1
fi

if [[ ! -d "$REPO/.git" ]]; then
  echo "Cloning musavirchukkan/musavirchukkan → $REPO"
  gh repo clone musavirchukkan/musavirchukkan "$REPO"
fi

cd "$REPO"
git checkout main
git pull origin main

if [[ ! -f README.backup-2026-07-31.md ]]; then
  cp README.md README.backup-2026-07-31.md 2>/dev/null || true
fi

cp "$SOURCE/README.md" ./README.md
mkdir -p assets .github/workflows
cp "$SOURCE/assets/"*.svg ./assets/
cp "$SOURCE/workflows/"*.yml ./github/workflows/

git add README.md assets .github/workflows
[[ -f README.backup-2026-07-31.md ]] && git add README.backup-2026-07-31.md

if git diff --cached --quiet; then
  echo "Profile repo already up to date."
  exit 0
fi

git commit -m "Update GitHub profile from cursor-cloud profile/live"
git push origin main
echo "Deployed to https://github.com/musavirchukkan"
