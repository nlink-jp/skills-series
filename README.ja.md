# skills-series

[nlink-jp](https://github.com/nlink-jp) の開発プロセス自動化のための
Claude Code Skills。本リポジトリはアンブレラで、各スキルは独立した
リポジトリを submodule として収録しています
（[ADR-004](https://github.com/nlink-jp/.github/blob/main/adr/004-skills-series-umbrella.md)）。

## Skills

| Skill | コマンド | 説明 |
|-------|---------|------|
| [rfp](https://github.com/nlink-jp/rfp) | `/rfp [tool-name]` | 新規 nlink-jp プロジェクトの RFP プロセスをファシリテート。Q&A で要件を収集し、CONVENTIONS.md の企画フェーズに対して検証し、構造化された RFP ドキュメントを出力する。 |
| [mcp-tactics](https://github.com/nlink-jp/mcp-tactics) | `/mcp-tactics` | 組織の MCP サーバとプロキシを横断する戦術書 — 入力アーティファクト→ルートの意思決定テーブル、サーバ横断チェーン、「オフライン → サードパーティ照会 → 対象接触」のエスカレーション・ドクトリン（ADR-003）。 |

## インストール

各スキルは「zip ルート = スキルフォルダ」の zip をリリースしています。
各スキルの Releases ページからダウンロードし、次のいずれかで導入します:

```bash
unzip <skill>-vX.Y.Z.zip -d ~/.claude/skills/
```

または claude.ai / Claude Desktop の **Settings → Skills** に zip を
そのままアップロードします。

ソースからインストールする場合は、スキルのリポジトリ（またはこの
アンブレラを `--recurse-submodules` 付きで）clone し、スキルリポジトリ内で
`make install` を実行してください。

## Conventions

すべてのスキルは
[CONVENTIONS.md](https://github.com/nlink-jp/.github/blob/main/CONVENTIONS.md)
の共有ルールに従います: 1 スキル 1 リポジトリ、スキル本体は
`<skill-name>/` サブディレクトリ、`make check` による構造検証、
GitHub Release zip による配布。

## ドキュメント

- [English](README.md)
- [日本語](README.ja.md)

## ライセンス

[MIT](LICENSE)
