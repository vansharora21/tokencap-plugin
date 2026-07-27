# TokenCap Plugins (`tokencap-plugin`)

Official host plugin integrations for **TokenCap v1.7.0** (Claude Code, OpenAI Codex, Cursor, Windsurf, Antigravity).

Stop teaching every AI your codebase. TokenCap host plugins connect your favorite AI coding agents directly to TokenCap's **Self-Loading Universal Context Layer** and **Local MCP Server**.

---

## Supported Plugins

| Plugin | Target Host | Description | Marketplace Location |
| --- | --- | --- | --- |
| `tokencap` | **Claude Code** | Native smart context, impact analysis skills, and MCP tools | `.claude-plugin/marketplace.json` |
| `tokencap-context` | **Codex** | Self-loading codebase context layer (`.tokencap/agent/START_HERE.md`) | `.agents/plugins/marketplace.json` |

---

## Installation & Setup Guide

### Option 1: One-Command Installer (Recommended)

Run the included PowerShell installer in your terminal:

```powershell
.\install-plugins.ps1
```

Or for Linux / macOS:

```bash
chmod +x ./install-plugins.sh
./install-plugins.sh
```

---

### Option 2: Manual Installation via Marketplace

#### 1. Claude Code Plugin

Add the marketplace catalog and install the `tokencap` plugin:

```bash
claude plugin marketplace add https://github.com/vansharora21/tokencap-plugin.git
claude plugin install tokencap@tokencap-official
```

#### 2. OpenAI Codex Plugin

Add the marketplace catalog and install the `tokencap-context` plugin:

```bash
codex plugin marketplace add https://github.com/vansharora21/tokencap-plugin.git
codex plugin add tokencap-context@tokencap-official
```

---

## How It Works

1. **Local Intelligence First**: TokenCap runs entirely on your machine (`tokencap make`), generating zero-egress context snapshots in `.tokencap/`.
2. **MCP Integration**: The Claude Code plugin connects to the local `tokencap mcp` server endpoint without sending repository data to external cloud services.
3. **Self-Loading Context**: Codex automatically reads `.tokencap/agent/START_HERE.md` to navigate project architecture, dependencies, and risk maps without costly repository rescans.

---

## License

MIT © [VanshArora21](https://github.com/vansharora21)
