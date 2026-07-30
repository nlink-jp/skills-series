# CLAUDE.md — skills-series

**Organization rules (mandatory): https://github.com/nlink-jp/.github/blob/main/CONVENTIONS.md**

## Non-negotiable rules

- **Docs in sync** — update `README.md` and `README.ja.md` in the same commit as behaviour changes.
- **Small, typed commits** — `feat:`, `fix:`, `docs:`, `chore:`

## This series

Umbrella repository for Claude Code Skills — one repository per skill,
included as submodules (ADR-004). Skill development, validation, packaging,
and releases all happen in the skill repositories; this repo only tracks
submodule pointers and the series catalog.

```
skills-series/
├── rfp/          github.com/nlink-jp/rfp          (/rfp — RFP facilitation)
└── mcp-tactics/  github.com/nlink-jp/mcp-tactics  (/mcp-tactics — MCP selection tactics)
```

After releasing a skill, bump its submodule pointer here and update the org
profile README if the catalog entry changed.

## Communication Language

All communication between contributors and Claude Code is conducted in **Japanese**.
