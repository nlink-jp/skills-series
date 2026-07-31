# skills-series

Claude Code Skills packaging [nlink-jp](https://github.com/nlink-jp)
workflows — development process, research, meeting minutes, and security
analysis. This is an umbrella repository: each skill lives in its
own repository and is included here as a submodule
([ADR-004](https://github.com/nlink-jp/.github/blob/main/adr/004-skills-series-umbrella.md)).

## Skills

| Skill | Command | Description |
|-------|---------|-------------|
| [rfp](https://github.com/nlink-jp/rfp) | `/rfp [tool-name]` | Facilitates the RFP process for new nlink-jp projects. Collects requirements through Q&A, validates against CONVENTIONS.md planning phase, and outputs a structured RFP document. |
| [mcp-tactics](https://github.com/nlink-jp/mcp-tactics) | `/mcp-tactics` | Cross-cutting tactics book for the organization's MCP servers and proxies — decision tables from input artifact to route, cross-server chains, and an offline-before-third-party-before-target-contact escalation doctrine (ADR-003). |
| [meeting-notes](https://github.com/nlink-jp/meeting-notes) | `/meeting-notes <transcript>` | Structures a meeting transcript (TXT/VTT/SRT) into a validated 3-layer JSON record — verbatim utterances, decisions with rationale, summaries — and compiles Markdown or self-contained HTML minutes. Successor to the meeting-note CLI. |
| [service-research](https://github.com/nlink-jp/service-research) | `/service-research <name>` | Researches a product or service — overview, ToS, privacy, data security, AI-agent behavior — by reading the primary sources on the web, and emits a schema-validated JSON report with a three-tier risk rating plus compiled Markdown (ADR-007). Successor to the product-research CLI. |
| [incident-research](https://github.com/nlink-jp/incident-research) | `/incident-research <incident>` | Deep-dives one publicly reported security incident — breach, ransomware, leak, supply-chain, exploited vulnerability — by collecting and reading news and primary sources, and emits a schema-validated JSON report (timeline-centric, three source tiers, confidence-qualified attribution) plus compiled Markdown (ADR-008). |
| [incident-review](https://github.com/nlink-jp/incident-review) | `/incident-review <record>` | Retrospectively analyzes your own organization's IR communication record — Slack exports, plain-text logs, connector-read channels, or any transcript — behind a defang/nonce-isolation preprocessing gate, and emits a schema-validated JSON report (summary, activity, roles, process review) plus reusable tactic knowledge documents (ADR-009). Successor to the ai-ir / ai-ir2 CLIs. |

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
