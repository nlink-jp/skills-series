# skills-series

[nlink-jp](https://github.com/nlink-jp) の開発プロセス自動化のための Claude Code Skills。

## 機能

- **rfp** — 新規プロジェクト計画のためのインタラクティブRFPファシリテーション（[CONVENTIONS.md](https://github.com/nlink-jp/.github/blob/main/CONVENTIONS.md) Phase 1 準拠）

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

## 収録Skills

| Skill | コマンド | 説明 |
|-------|---------|------|
| rfp | `/rfp [tool-name]` | 新規nlink-jpプロジェクトのRFPプロセスをファシリテーション。Q&Aで要件を収集し、CONVENTIONS.md計画フェーズに照らして検証、構造化されたRFP文書を出力。 |

## ドキュメント

- [English](README.md)
- [Japanese](README.ja.md)

## ライセンス

[MIT](LICENSE)
