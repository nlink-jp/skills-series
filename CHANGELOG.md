# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/).

## [0.3.0] - 2026-07-26

### Added

- `mcp-tactics` skill — cross-cutting tactics book for the organization's 15 MCP
  servers and 2 proxies (ADR-003). `SKILL.md` is a router of decision tables
  (input artifact → route, cross-server chains, escalation doctrine) with
  per-domain playbooks under `references/`: network intel, URL triage, pcap,
  data analysis, media production, second opinions and proxies. Records
  selection and ordering only — each server's own `get_usage` stays
  authoritative for parameters and error recovery.
- `make check` / `make test` — structural validation of every skill
  (`tests/validate-skills.sh`): frontmatter present, `name` matches the
  directory that provides the slash command, and all relative links resolve.

## [0.2.1] - 2026-04-12

### Changed

- `rfp` skill: new projects now directed to `_wip/` working directory per updated CONVENTIONS.md Phase 2 rules
- `rfp` skill: next steps include `_wip/` → submodule integration workflow reminder

## [0.2.0] - 2026-04-11

### Changed

- `rfp` skill: RFP output path updated from `docs/design/` to `docs/ja/*.ja.md` + `docs/en/*.md` per CONVENTIONS.md documentation structure rules

## [0.1.0] - 2026-04-11

### Added

- Initial release
- `rfp` skill: interactive RFP facilitation for new nlink-jp projects
- `make install` / `make uninstall` for skill deployment
