# TokenCap Host Plugins (`tokencap-plugin`)

Official host plugin integrations for **TokenCap v2.9.0** (Claude Code, OpenAI Codex, Cursor, Windsurf, Antigravity).

Stop teaching every AI your codebase. TokenCap host plugins connect your favorite AI coding agents directly to TokenCap's **Self-Loading Universal Context Layer** and **Local MCP Server**.

---

## Supported Plugins & Capabilities

| Plugin | Target Host | Included Skills | MCP Server | Marketplace Manifest |
| :--- | :--- | :--- | :--- | :--- |
| `tokencap` | **Claude Code** | `smart-context`, `impact-analysis`, `constitution`, `adr-management`, `security-scan`, `change-review`, `session-handoff` | Auto-spawned stdio (`tokencap serve --mcp`) | `.claude-plugin/marketplace.json` |
| `tokencap-context` | **OpenAI Codex** | `tokencap-context` (Zero-crawler self-loading context) | Local CLI / MCP | `.agents/plugins/marketplace.json` |

---

## Included Skills

1. **`smart-context`**: High-relevance, token-optimized context retrieval across Knowledge Graphs, AST summaries, and Diff history.
2. **`impact-analysis`**: Calculates blast radius, downstream consumers, and risk ratings prior to file edits.
3. **`constitution`**: Verifies layer boundaries (Routes $\rightarrow$ Service $\rightarrow$ DB) and architecture rules.
4. **`adr-management`**: Read, write, and persist Architecture Decision Records across independent conversation sessions.
5. **`security-scan`**: Scans for secret leaks, redactions, and source-to-sink untrusted taint flows.
6. **`change-review`**: Builds a local, evidence-backed review packet for pending changes with risk findings and test gaps.
7. **`session-handoff`**: Stages a redacted session summary for explicit approval and exports it for the next agent.

Skills use the seven core TokenCap commands (`make`, `ask`, `analyze`, `serve`, `update`, `help`, `version`) and the tools defined by MCP contract v2.

---

## Requirements

- Node.js 18+ and Git.
- TokenCap CLI **v2.8.0 or later** (`npm install -g tokencap`). The plugins start the MCP server with `tokencap serve --mcp`, which older CLI versions do not provide.

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

### Option 2: Manual Marketplace Installation

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

1. **Zero Egress & Local Intelligence**: TokenCap executes entirely locally (`tokencap make`), emitting localized structured context in `.tokencap/`.
2. **Auto-Wired MCP Protocol**: The Claude Code plugin automatically wires `.mcp.json` to the local `tokencap serve --mcp` process on startup.
3. **Self-Loading Context Layer**: Agents load `.tokencap/agent/START_HERE.md` and consult `allowed-context.json` to instantly target relevant code without costly full-repository crawling.

---

## License

MIT © [VanshArora21](https://github.com/vansharora21)
