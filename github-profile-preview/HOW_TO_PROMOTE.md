# Promote this preview to your live GitHub profile

This folder is a **preview** of your rewritten profile README. Your live profile is still:

https://github.com/musavirchukkan/musavirchukkan

## What’s included

| File | Purpose |
| --- | --- |
| `README.md` | Full profile rewrite (About, projects, stack, stats, snake, achievements) |
| `.github/workflows/snake.yml` | Daily contribution-snake SVG generator |

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
mkdir -p .github/workflows
cp /path/to/github-profile-preview/.github/workflows/snake.yml .github/workflows/snake.yml

# Remove the PREVIEW comment at the top of README.md if you want
# Commit & push
git add README.md .github/workflows/snake.yml
git commit -m "Rewrite GitHub profile README"
git push origin main
```

Or reply in the Cursor agent chat: **“confirmed — replace my live profile”** and the agent can push into `musavirchukkan/musavirchukkan` for you (if write access is available).

## After promoting

1. **Actions**: Repo → Settings → Actions → General → allow Actions / allow GitHub Actions.
2. **Run snake once**: Actions → “Generate contribution snake” → Run workflow.
3. Wait for the `output` branch + SVGs, then the snake section in the README will render.
4. No extra secrets are required for the snake workflow (`GITHUB_TOKEN` is enough).

## Optional add-ons (say the word)

- Spotify Now Playing
- WakaTime coding stats
- Blog / RSS feed section
- GitHub Activity feed
