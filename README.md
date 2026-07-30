# skills-series

Claude Code Skills for [nlink-jp](https://github.com/nlink-jp) development
process automation. This is an umbrella repository: each skill lives in its
own repository and is included here as a submodule
([ADR-004](https://github.com/nlink-jp/.github/blob/main/adr/004-skills-series-umbrella.md)).

## Skills

| Skill | Command | Description |
|-------|---------|-------------|
| [rfp](https://github.com/nlink-jp/rfp) | `/rfp [tool-name]` | Facilitates the RFP process for new nlink-jp projects. Collects requirements through Q&A, validates against CONVENTIONS.md planning phase, and outputs a structured RFP document. |
| [mcp-tactics](https://github.com/nlink-jp/mcp-tactics) | `/mcp-tactics` | Cross-cutting tactics book for the organization's MCP servers and proxies — decision tables from input artifact to route, cross-server chains, and an offline-before-third-party-before-target-contact escalation doctrine (ADR-003). |

## Installation

Each skill releases a zip whose root is the skill folder. Download it from
the skill's own Releases page, then either:

```bash
unzip <skill>-vX.Y.Z.zip -d ~/.claude/skills/
```

or upload the zip as-is to claude.ai / Claude Desktop under
**Settings → Skills**.

To install from source instead, clone the skill's repository (or this
umbrella with `--recurse-submodules`) and run `make install` inside the
skill repository.

## Conventions

All skills follow the shared organization rules in
[CONVENTIONS.md](https://github.com/nlink-jp/.github/blob/main/CONVENTIONS.md):
one repository per skill, skill content in a `<skill-name>/` subdirectory,
structural validation via `make check`, and GitHub Release zips as the
distribution channel.

Each skill repository carries its own bilingual READMEs, CHANGELOG, and
MIT license; this umbrella only tracks submodule pointers and the catalog
above. The pre-split monorepo history (through v0.3.1) remains in this
repository's git log and Releases.
