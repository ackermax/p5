# CLAUDE.md - Quartz Publishing Folder

Standing instructions for working in this Quartz folder. Read before making changes.

## What this folder is

This is a Quartz 5 static-site generator install that publishes a D&D campaign vault to GitHub Pages. It is a separate project from the Obsidian vault itself.

- **This folder:** `C:\Users\hack2\Documents\quartz`
- **Source vault (separate, has its own CLAUDE.md):** `C:\Users\hack2\Documents\The Adventures of the Phandalin Five`
- **GitHub repo:** https://github.com/ackermax/p5
- **Live site:** https://ackermax.github.io/p5/

## Important: do not edit content directly

The `content/` folder is a symlink to the Obsidian vault. Never edit files inside `content/` from this session - those edits would land directly in the vault, bypassing the vault's own CLAUDE.md rules (no spoilers, ask-on-ambiguity, etc.).

Note editing belongs in the vault folder's Claude Code session. This session is for the site infrastructure that wraps around the notes.

## What this session handles

- Theme, fonts, and site title in `quartz.config.yaml`
- Custom CSS in `quartz/styles/custom.scss`
- Site assets (logos, favicons) in `static/`
- GitHub Actions workflows in `.github/workflows/`
- The publish script `publish.ps1`
- Plugin configuration and Quartz updates

## Common tasks

**Publishing changes:**
```powershell
.\publish.ps1
```
Stages, commits with a timestamp, pushes. GitHub Actions rebuilds and deploys automatically in 1-3 minutes.

**Local preview:**
```powershell
npx quartz build --serve
```
Serves at `http://localhost:8080`. Content edits hot-reload; config edits need a server restart (Ctrl+C, re-run).

**After editing `quartz.config.yaml`:** restart the dev server. Hot-reload does not reliably pick up YAML config changes in v5.

**After changing plugins:** run `npx quartz plugin install --from-config` before the next build.

## Key files

- `quartz.config.yaml` - site title, baseUrl, theme colors, fonts, plugins, ignorePatterns
- `quartz/styles/custom.scss` - custom CSS (logo styling lives here)
- `static/` - site-chrome assets like the logo
- `.github/workflows/deploy-pages.yml` - the workflow that deploys to GitHub Pages
- `publish.ps1` - one-command publish script

## Deploy notes

- The deploy workflow triggers on push to branch `v5`
- `baseUrl` is `ackermax.github.io/p5`, so asset paths on the live site need the `/p5/` prefix (e.g., `/p5/static/logo.png`)
- Local previews at `localhost:8080` do not need the `/p5/` prefix, which can cause local-vs-live path mismatches - test both when changing asset URLs

## How to work

Edit freely for site infrastructure. Ask before:
- Changing anything that could break the deploy (workflow files, baseUrl, plugin list)
- Removing or significantly restructuring existing styling
- Any change that would touch the symlinked `content/` folder

When in doubt, suggest the change and wait rather than applying it.
