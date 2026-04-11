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

## Directory structure

```
skills-series/
├── rfp/               Interactive RFP facilitation
│   └── SKILL.md       Skill definition (frontmatter + instructions)
├── Makefile
├── README.md
├── README.ja.md
├── CHANGELOG.md
├── CLAUDE.md
├── AGENTS.md
└── LICENSE
```

## Gotchas

- Skills are not code — no build, no tests, no `dist/`.
- After editing a SKILL.md, run `make install` to update the deployed copy.
- Skill names must be lowercase with hyphens (directory name = slash command name).

## Module path

Repository: `github.com/nlink-jp/skills-series`
