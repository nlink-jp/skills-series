# skills-series

Claude Code Skills for [nlink-jp](https://github.com/nlink-jp) development process automation.

## Features

- **rfp** — Interactive RFP facilitation for new project planning (based on [CONVENTIONS.md](https://github.com/nlink-jp/.github/blob/main/CONVENTIONS.md) Phase 1)

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

## Available Skills

| Skill | Command | Description |
|-------|---------|-------------|
| rfp | `/rfp [tool-name]` | Facilitates RFP process for new nlink-jp projects. Collects requirements through Q&A, validates against CONVENTIONS.md planning phase, and outputs a structured RFP document. |

## Documentation

- [English](README.md)
- [Japanese](README.ja.md)

## License

[MIT](LICENSE)
