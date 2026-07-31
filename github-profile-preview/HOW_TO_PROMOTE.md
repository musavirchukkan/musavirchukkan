# Promote this preview to your live GitHub profile

This folder is a **preview** of your rewritten profile README. Your live profile is still:

https://github.com/musavirchukkan/musavirchukkan

## What’s included

| File | Purpose |
| --- | --- |
| `README.md` | Interactive/technical profile rewrite |
| `assets/github-contribution-grid-snake*.svg` | Contribution snake animation |
| `assets/github-stats*.svg` / `assets/top-langs*.svg` | Stats cards (official host is often paused) |
| `.github/workflows/snake.yml` | Daily refresh of snake SVGs |
| `.github/workflows/stats-cards.yml` | Daily refresh of stats + top-langs SVGs |

## Review checklist

1. Open [`README.md`](./README.md) on GitHub and skim the rendered Markdown.
2. Confirm project list, achievements, email, and links.
3. Optional: tweak section order or remove the snake before promoting.

## Promote to live profile (after you confirm)

```bash
# Clone your live profile repo
gh repo clone musavirchukkan/musavirchukkan /tmp/musavirchukkan-profile
cd /tmp/musavirchukkan-profile

# Back up current README
cp README.md README.backup.md

# Copy preview files over
cp /path/to/github-profile-preview/README.md ./README.md
mkdir -p .github/workflows assets
cp /path/to/github-profile-preview/.github/workflows/*.yml .github/workflows/
cp /path/to/github-profile-preview/assets/*.svg ./assets/

# Remove the PREVIEW comment at the top of README.md if you want
# Commit & push
git add README.md assets .github/workflows
git commit -m "Rewrite GitHub profile README"
git push origin main
```

Or reply in the Cursor agent chat: **“confirmed — replace my live profile”** and the agent can push into `musavirchukkan/musavirchukkan` for you (if write access is available).

## After promoting

1. **Actions**: Repo → Settings → Actions → General → allow Actions with **read/write** permissions.
2. **Run workflows once**: Actions → “Generate contribution snake” and “Refresh GitHub stats cards” → Run workflow.
3. SVGs already live in `./assets/` — profile looks correct immediately; Actions refresh them daily.
4. No extra secrets required (`GITHUB_TOKEN` is enough).

See **[DEPLOY.md](./DEPLOY.md)** for the full step-by-step (PR merge vs live profile push).

## Optional add-ons (say the word)

- Spotify Now Playing
- WakaTime coding stats
- Blog / RSS feed section
- GitHub Activity feed
