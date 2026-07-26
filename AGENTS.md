# AGENTS.md — skills-series

## Project summary

Claude Code Skills for nlink-jp development process automation.
Each subdirectory contains a skill (SKILL.md) that can be invoked via
`/skill-name` in Claude Code.

## Key commands

| Command | Purpose |
|---------|---------|
| `make install` | Copy all skills to `~/.claude/skills/` |
| `make install DEST=<path>` | Copy to a custom directory |
| `make uninstall` | Remove installed skills |
| `make list` | List available skills |
| `make check` (= `make test`) | Structural validation of every skill |

## Directory structure

```
skills-series/
├── rfp/               Interactive RFP facilitation
│   └── SKILL.md       Skill definition (frontmatter + instructions)
├── mcp-tactics/       Which MCP server to use when (ADR-003)
│   ├── SKILL.md       Router — decision tables, chains, escalation doctrine
│   └── references/    Per-domain playbooks, read on demand
├── tests/
│   └── validate-skills.sh
├── Makefile
├── README.md
├── README.ja.md
├── CHANGELOG.md
├── CLAUDE.md
├── AGENTS.md
└── LICENSE
```

## Gotchas

- Skills are not code — no build, no `dist/`, and no behaviour tests. Structure
  *is* tested: `make check` verifies frontmatter and relative links, which is
  what actually rots in a multi-file skill.
- After editing a SKILL.md, run `make install` to update the deployed copy.
- Skill names must be lowercase with hyphens (directory name = slash command name).
- `mcp-tactics` records **selection and ordering only**. Parameters, return
  shapes, and error codes belong to each MCP server's own `get_usage` tool —
  duplicating them here guarantees drift (ADR-003). When a server gains or loses
  a *tool*, update the index; when a tool's arguments change, do nothing.

## Module path

Repository: `github.com/nlink-jp/skills-series`
