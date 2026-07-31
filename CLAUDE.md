# CLAUDE.md — skills-series

**Organization rules (mandatory): https://github.com/nlink-jp/.github/blob/main/CONVENTIONS.md**

## Non-negotiable rules

- **Small, typed commits** — `feat:`, `fix:`, `docs:`, `chore:`
- **Umbrella files are README.md / CLAUDE.md / AGENTS.md only** — bilingual
  READMEs, CHANGELOG, and LICENSE live in each skill repository, matching the
  other series umbrellas.

## This series

Umbrella repository for Claude Code Skills — one repository per skill,
included as submodules (ADR-004). Skill development, validation, packaging,
and releases all happen in the skill repositories; this repo only tracks
submodule pointers and the series catalog.

```
skills-series/
├── rfp/               github.com/nlink-jp/rfp               (/rfp — RFP facilitation)
├── mcp-tactics/       github.com/nlink-jp/mcp-tactics       (/mcp-tactics — MCP selection tactics)
├── meeting-notes/     github.com/nlink-jp/meeting-notes     (/meeting-notes — transcript → structured minutes)
└── service-research/  github.com/nlink-jp/service-research  (/service-research — product/service risk research)
```

After releasing a skill, bump its submodule pointer here and update the org
profile README if the catalog entry changed.

## Communication Language

All communication between contributors and Claude Code is conducted in **Japanese**.
