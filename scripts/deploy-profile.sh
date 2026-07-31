#!/usr/bin/env bash
# Deploy profile from cursor-cloud to musavirchukkan/musavirchukkan
# Run locally: bash scripts/deploy-profile.sh
set -euo pipefail

REPO="${PROFILE_REPO:-$HOME/musavirchukkan-profile}"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
SOURCE="$ROOT/profile-deploy"

if [[ ! -d "$SOURCE" ]]; then
  echo "Missing $SOURCE — run from cursor-cloud repo root after pulling main."
  exit 1
fi

if [[ ! -d "$REPO/.git" ]]; then
  echo "Cloning musavirchukkan/musavirchukkan → $REPO"
  gh repo clone musavirchukkan/musavirchukkan "$REPO"
fi

cd "$REPO"
git checkout main
git pull origin main

# Extra safety backup if not already present
if [[ ! -f README.backup-2026-07-31.md ]]; then
  cp README.md README.backup-2026-07-31.md
  echo "Saved README.backup-2026-07-31.md"
fi

cp "$SOURCE/README.md" ./README.md
mkdir -p assets .github/workflows
cp "$SOURCE/assets/"*.svg ./assets/
cp "$SOURCE/.github/workflows/"*.yml ./github/workflows/

git add README.md assets .github/workflows
if [[ -f README.backup-2026-07-31.md ]]; then
  git add README.backup-2026-07-31.md
fi

if git diff --cached --quiet; then
  echo "Nothing to commit — profile already up to date."
  exit 0
fi

git commit -m "Rewrite GitHub profile README

Includes assets for stats, languages, and contribution snake plus
daily refresh workflows. Previous README in README.backup-2026-07-31.md."

git push origin main

echo ""
echo "Done! Profile live at: https://github.com/musavirchukkan"
echo "Enable Actions on the repo if you haven't already (Settings → Actions)."
