# AGENTS.md — skills-series

## Project summary

Umbrella repository for nlink-jp's Claude Code Skills. Each skill lives in
its own repository (ADR-004) and is included here as a submodule. This repo
is a pure catalog: submodules + READMEs, no Makefile, no tests.

## Submodules

| Path | Repository | Skill |
|------|-----------|-------|
| `rfp/` | github.com/nlink-jp/rfp | `/rfp` — RFP facilitation for new projects |
| `mcp-tactics/` | github.com/nlink-jp/mcp-tactics | `/mcp-tactics` — MCP server selection tactics (ADR-003) |

## Key commands

| Command | Purpose |
|---------|---------|
| `git clone --recurse-submodules` | Clone with all skills |
| `git submodule update --init` | Populate submodules in an existing clone |
| (inside a skill repo) `make install` / `make check` / `make package` | Per-skill work happens there |

## Gotchas

- Development happens in the skill repositories, not here. After releasing a
  skill, bump its submodule pointer in this repo (`git add <skill>` →
  `chore: bump <skill> to vX.Y.Z`).
- Submodules use HTTPS URLs (SSH fails on machines without auth).
- When working inside a submodule, make sure it is on `main`, not a detached
  HEAD, before committing.
- This repo was a monorepo through v0.3.1; that history (and the pre-split
  skill content) remains in this repository's git log.

## Module path

Repository: `github.com/nlink-jp/skills-series`
