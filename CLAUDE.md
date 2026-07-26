# CLAUDE.md — skills-series

**Organization rules (mandatory): https://github.com/nlink-jp/.github/blob/main/CONVENTIONS.md**

## Non-negotiable rules

- **Docs in sync** — update `README.md` and `README.ja.md` in the same commit as behaviour changes.
- **Small, typed commits** — `feat:`, `fix:`, `docs:`, `chore:`

## This series

Claude Code Skills for nlink-jp development process automation.

Skills are Markdown-based instructions (SKILL.md) that extend Claude Code
with organization-specific workflows.

```
skills-series/
├── rfp/               RFP facilitation skill
│   └── SKILL.md
├── mcp-tactics/       MCP server selection tactics (ADR-003)
│   ├── SKILL.md       Router: decision tables + chains
│   └── references/    Per-domain playbooks
├── tests/             validate-skills.sh (structural checks)
├── Makefile           install / uninstall / list / check
├── README.md
├── README.ja.md
├── CHANGELOG.md
├── CLAUDE.md
├── AGENTS.md
└── LICENSE
```

## Build conventions

- No compilation step — skills are Markdown files.
- `make check` (alias `make test`) validates skill structure — run it before committing.
- `make install` copies skills to `~/.claude/skills/` (or custom `DEST`).
- `make uninstall` removes installed skills.
- `dist/` convention does not apply to this series.

## Communication Language

All communication between contributors and Claude Code is conducted in **Japanese**.
