# AGENTS.md — skills-series

## Project summary

Umbrella repository for nlink-jp's Claude Code Skills. Each skill lives in
its own repository (ADR-004), included here as a submodule. The catalog —
one row per skill — is [README.md](README.md); this file covers only how to
work with the umbrella (ADR-005).

## Key commands

| Command | Purpose |
|---------|---------|
| `git clone --recurse-submodules https://github.com/nlink-jp/skills-series.git` | Clone with all skills |
| `git submodule update --init` | Populate submodules in an existing clone |
| `git submodule update --remote <skill>` | Pull a skill's latest main |
| `git add <skill>` → commit `chore: bump <skill> to vX.Y.Z` | Update the pointer after a skill release |

## Gotchas

- Skill development happens in the skill repositories (per-skill
  `make check` / `make install` / `make package`); new skills start in the
  workspace root `_wip/`, never directly inside this umbrella
  (CONVENTIONS.md — Starting a New Project).
- Skills release as GitHub Release zips whose root is the skill folder
  (ADR-004) — this umbrella mints no releases of its own.
- Submodule checkouts default to detached HEAD — `git checkout main` inside
  a submodule before committing.
- Submodule URLs are HTTPS only (SSH fails on machines without key auth).
- Every submodule needs a catalog row in README.md — `check-org.sh` fails
  otherwise.
- This repo was a monorepo through v0.3.1; that history remains in its git
  log and Releases.

## Module path

Repository: `github.com/nlink-jp/skills-series`
