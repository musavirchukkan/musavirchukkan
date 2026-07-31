# Rename repo & go live on GitHub profile

This repo is **ready** to become your GitHub profile repository (`musavirchukkan/musavirchukkan`).

## Current structure (already done)

| Path | Role |
| --- | --- |
| `/README.md` | **Live** profile (shown on github.com/musavirchukkan after rename) |
| `/assets/` | Live SVGs (stats, languages, snake) |
| `/.github/workflows/` | Daily refresh Actions |
| `/profile/live/` | Editable copy — edit here, then `bash scripts/promote-to-root.sh` |
| `/profile/archive/` | Old profile versions |

## Steps to go live

### 1. Confirm this branch is merged to `main`

Merge the restructure PR on `cursor-cloud` (or pull latest `main`).

### 2. Delete the **old** profile repo

1. Open https://github.com/musavirchukkan/musavirchukkan/settings  
2. **Danger zone** → **Delete this repository**  
3. Type `musavirchukkan/musavirchukkan` to confirm  

Your old README is safe in `profile/archive/2026-07-31-pre-rewrite/README.md`.

### 3. Rename **this** repo

1. Open https://github.com/musavirchukkan/cursor-cloud/settings  
2. **Repository name** → change to **`musavirchukkan`**  
3. Save  

You now have `musavirchukkan/musavirchukkan` with the new profile at the root.

### 4. Enable GitHub Actions (one-time)

On the renamed repo: **Settings → Actions → General**

- Allow GitHub Actions  
- Workflow permissions: **Read and write**

Then run once manually:

- **Generate contribution snake**  
- **Refresh GitHub stats cards**

### 5. Verify

- Profile: https://github.com/musavirchukkan  
- Repo tree: root `README.md` + `assets/` + `profile/`  

---

## Future profile updates

```bash
# 1. Edit profile/live/README.md (and assets if needed)
# 2. Optional: archive current version first
bash scripts/archive-current.sh "2026-08-01-update"

# 3. Promote to root
bash scripts/promote-to-root.sh

# 4. Commit & push
git add -A && git commit -m "Update GitHub profile" && git push
```

---

## Optional: keep `cursor-cloud` as a separate repo

If you still want a Cursor agent workspace **and** a profile repo:

- Do **not** rename — instead run `bash scripts/deploy-profile.sh` (legacy) to push only `profile/live/` to `musavirchukkan/musavirchukkan`.

The restructure makes **rename** the simpler path: one repo, root = profile, `profile/` = workshop + archive.
