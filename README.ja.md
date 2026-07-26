# skills-series

[nlink-jp](https://github.com/nlink-jp) の開発プロセス自動化のための Claude Code Skills。

## 機能

- **rfp** — 新規プロジェクト計画のためのインタラクティブRFPファシリテーション（[CONVENTIONS.md](https://github.com/nlink-jp/.github/blob/main/CONVENTIONS.md) Phase 1 準拠）
- **mcp-tactics** — 自組織の MCP サーバをどの状況でどの順に使うかの戦術書（[ADR-003](https://github.com/nlink-jp/.github/blob/main/adr/003-mcp-tactics-skill.md)）

## インストール

```bash
git clone https://github.com/nlink-jp/skills-series.git
cd skills-series
make install
```

すべてのSkillが `~/.claude/skills/` にコピーされます。特定プロジェクトにインストールする場合:

```bash
make install DEST=/path/to/project/.claude/skills
```

## アンインストール

```bash
make uninstall
```

## 使い方

インストール後、Claude Code で `/` プレフィックスを付けて呼び出します:

```
/rfp
/rfp my-new-tool
```

`mcp-tactics` は参照型Skillです。自組織のMCPサーバが関わるタスクではClaudeが自動で読み込み、`/mcp-tactics` で明示的に開くこともできます。

## 収録Skills

| Skill | コマンド | 説明 |
|-------|---------|------|
| rfp | `/rfp [tool-name]` | 新規nlink-jpプロジェクトのRFPプロセスをファシリテーション。Q&Aで要件を収集し、CONVENTIONS.md計画フェーズに照らして検証、構造化されたRFP文書を出力。 |
| mcp-tactics | `/mcp-tactics` | 自組織のMCPサーバ15本＋proxy 2本の横断戦術書。入力アーティファクトからの経路決定表、サーバ横断チェーン、quota と前提条件、そして「オフライン→第三者照会→対象接触」のエスカレーション原則。**選択と順序のみ**を記述し、パラメータは各サーバの `get_usage` を正とする。 |

## 検証

```bash
make check
```

各Skillのfrontmatter（存在すること、`name` がスラッシュコマンドとなるディレクトリ名と一致すること）と、Skill内の相対リンクがすべて解決することを検査します。`SKILL.md` や参照ファイルを編集したら実行してください。

## ドキュメント

- [English](README.md)
- [Japanese](README.ja.md)

## ライセンス

[MIT](LICENSE)
