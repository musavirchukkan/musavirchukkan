# Deploy your new GitHub profile — step by step

You approved the preview. Here is what to do next.

## Two different repos (important)

| Repo | What it is | What merging does |
| --- | --- | --- |
| **musavirchukkan/cursor-cloud** (this PR) | Stores the preview work | Saves preview + backup in `cursor-cloud` — **does not change your profile** |
| **musavirchukkan/musavirchukkan** | Your **live** GitHub profile | Updating this repo changes what people see on your profile |

**You can merge the cursor-cloud PR** (optional, good for history).  
**You must also update `musavirchukkan/musavirchukkan`** to go live on GitHub.

---

## Step 1 — Merge the preview PR (optional but recommended)

1. Open https://github.com/musavirchukkan/cursor-cloud/pull/1  
2. Click **Ready for review** (if still draft)  
3. Click **Merge pull request** → **Confirm merge**

This keeps the preview, backup, and workflows in `cursor-cloud` for future reference.

---

## Step 2 — Back up your current live profile (already done here)

Your **old** profile README is saved at:

`github-profile-preview/backup/live-profile-2026-07-31/README.md`

After merging the PR, you can also view it on GitHub in that path.

---

## Step 3 — Push the new profile to `musavirchukkan/musavirchukkan`

Run these commands **on your machine** (logged in as your GitHub account):

```bash
# 1. Clone your LIVE profile repo
gh repo clone musavirchukkan/musavirchukkan ~/musavirchukkan-profile
cd ~/musavirchukkan-profile

# 2. Back up current README on disk too (extra safety)
cp README.md README.backup-2026-07-31.md

# 3. Clone cursor-cloud to copy preview files (after PR is merged)
gh repo clone musavirchukkan/cursor-cloud /tmp/cursor-cloud
PREVIEW=/tmp/cursor-cloud/github-profile-preview

# 4. Copy new profile + assets + workflows
cp "$PREVIEW/README.md" ./README.md
mkdir -p assets .github/workflows
cp "$PREVIEW/assets/"*.svg ./assets/
cp "$PREVIEW/.github/workflows/"*.yml ./github/workflows/

# 5. Remove the PREVIEW comment at the top of README.md (first 4 lines) — optional
#    sed -i '1,4d' README.md   # Linux
#    sed -i '' '1,4d' README.md  # macOS

# 6. Commit and push
git add README.md README.backup-2026-07-31.md assets .github/workflows
git commit -m "Rewrite GitHub profile README (backup saved as README.backup-2026-07-31.md)"
git push origin main
```

Within ~1 minute, refresh https://github.com/musavirchukkan — your new profile should appear.

---

## Step 4 — Enable GitHub Actions (one-time)

On **musavirchukkan/musavirchukkan**:

1. **Settings** → **Actions** → **General**  
2. Allow **GitHub Actions**  
3. Workflow permissions: **Read and write** (so workflows can commit refreshed SVGs)

Then run once manually:

- **Actions** → **Generate contribution snake** → **Run workflow**  
- **Actions** → **Refresh GitHub stats cards** → **Run workflow**

(Stats/snake SVGs are already in `assets/` so the profile looks correct immediately; Actions keep them updated daily.)

---

## Step 5 — Verify

- Profile: https://github.com/musavirchukkan  
- Repo: https://github.com/musavirchukkan/musavirchukkan  
- Old README backup: `README.backup-2026-07-31.md` in that repo + `github-profile-preview/backup/` in cursor-cloud

---

## Restore old profile (if ever needed)

```bash
cd ~/musavirchukkan-profile
cp README.backup-2026-07-31.md README.md
git add README.md && git commit -m "Restore previous profile README" && git push
```

Or copy from `github-profile-preview/backup/live-profile-2026-07-31/README.md` (skip the backup header at the top).

---

## Can the agent do this for you?

The cloud agent **cannot push** to `musavirchukkan/musavirchukkan` (no write access on your account).  
You need to run **Step 3** yourself — it takes about 2 minutes with the commands above.

If you want help tweaking anything before you push, say what to change.
