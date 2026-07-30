# skills-series

Claude Code Skills for [nlink-jp](https://github.com/nlink-jp) development process automation.

## Features

- **rfp** — Interactive RFP facilitation for new project planning (based on [CONVENTIONS.md](https://github.com/nlink-jp/.github/blob/main/CONVENTIONS.md) Phase 1)
- **mcp-tactics** — Which of nlink-jp's own MCP servers to reach for, and in what order ([ADR-003](https://github.com/nlink-jp/.github/blob/main/adr/003-mcp-tactics-skill.md))

## Installation

```bash
git clone https://github.com/nlink-jp/skills-series.git
cd skills-series
make install
```

This copies all skills to `~/.claude/skills/`. To install to a specific project:

```bash
make install DEST=/path/to/project/.claude/skills
```

## Uninstall

```bash
make uninstall
```

## Usage

After installation, invoke skills in Claude Code with the `/` prefix:

```
/rfp
/rfp my-new-tool
```

`mcp-tactics` is a reference skill: Claude loads it on its own when a task
involves one of our MCP servers, and `/mcp-tactics` shows it on demand.

## Available Skills

| Skill | Command | Description |
|-------|---------|-------------|
| rfp | `/rfp [tool-name]` | Facilitates RFP process for new nlink-jp projects. Collects requirements through Q&A, validates against CONVENTIONS.md planning phase, and outputs a structured RFP document. |
| mcp-tactics | `/mcp-tactics` | Cross-cutting tactics book for the organization's 17 MCP servers and 2 proxies — decision tables from input artifact to route, cross-server chains, quota and prerequisite facts, and an offline-before-third-party-before-target-contact escalation doctrine. Selection and ordering only; each server's `get_usage` remains authoritative for parameters. |

## Validation

```bash
make check
```

Checks every skill's frontmatter (present, `name` matching the directory that
provides the slash command) and that every relative link inside a skill
resolves. Run it after editing any `SKILL.md` or reference file.

## Documentation

- [English](README.md)
- [Japanese](README.ja.md)

## License

[MIT](LICENSE)
