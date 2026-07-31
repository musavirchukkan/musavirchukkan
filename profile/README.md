# Profile workspace

This repo is structured so **GitHub shows the root `README.md`** on your profile, while **`profile/`** keeps organized copies, archives, and workflows for future edits.

## Layout

```
/                          ← GitHub profile (public face)
├── README.md              ← LIVE profile (what github.com/musavirchukkan shows)
├── assets/                ← LIVE SVGs (stats, langs, snake)
└── .github/workflows/     ← LIVE Actions (daily refresh)

profile/
├── README.md              ← You are here
├── live/                  ← Editable copy of the live profile (promote → root)
│   ├── README.md
│   ├── assets/
│   └── workflows/         ← Mirror of .github/workflows (for reference)
└── archive/               ← Old profile versions (never delete without backup)
    └── 2026-07-31-pre-rewrite/
        └── README.md
```

## Daily workflow

### Edit the profile (recommended)

1. Change files in **`profile/live/`** (`README.md`, `assets/`, check `workflows/`).
2. Run from repo root:

   ```bash
   bash scripts/promote-to-root.sh
   ```

3. Commit and push. Root updates → your GitHub profile updates.

### Edit root directly

If you changed **`README.md`** or **`assets/`** at the repo root:

```bash
bash scripts/sync-from-root.sh
```

This copies root → `profile/live/` so the folder stays in sync.

### Archive before a big rewrite

```bash
bash scripts/archive-current.sh "2026-12-01-holiday-refresh"
```

Creates `profile/archive/<name>/` with the current `profile/live/` snapshot.

## After renaming this repo

When this repo becomes **`musavirchukkan/musavirchukkan`**, nothing in this layout changes — root is already the live profile. See **[RENAME_AND_GO_LIVE.md](../RENAME_AND_GO_LIVE.md)** at repo root.
