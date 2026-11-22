---
name: tokencap-context
description: Universal Self-Loading Context Layer for OpenAI Codex. Prevents full repo rescans by consuming local TokenCap v2.9.0 intelligence.
---

# TokenCap Context Skill for Codex

Equips Codex agents with TokenCap's Self-Loading Universal Context Layer to eliminate blind repository crawling and token waste.

## Usage Protocol

1. **Self-Loading Entry Point**:
   Before initiating broad file searches, read:
   ```markdown
   .tokencap/agent/START_HERE.md
   ```
   If `.tokencap/` is missing, run `tokencap make` first. After substantial repository drift, run `tokencap make --rebuild`.
2. **File Routing & Task Context**:
   Consult `.tokencap/agent/allowed-context.json` to find the exact files relevant to the active task.
3. **Deep Queries & Architecture**:
   - Query targeted logic: `tokencap ask "<question>"`
   - Check risk & blast radius: `tokencap ask impact <file>:<symbol>`
   - Check architecture rules: `tokencap analyze constitution`
   - Review pending changes: `tokencap analyze review` and `tokencap analyze tests --gaps`
   - Or query the local TokenCap MCP server (`tokencap serve --mcp`) through `tokencap_search`, `tokencap_overview`, `tokencap_files`, `tokencap_impact`, and `tokencap_review`.
4. **Session Handoff**:
   Stage a summary for the next agent with `tokencap serve session save --summary "<outcome>" --files <paths>`. Captures stay staged until explicitly approved.

Use the seven core commands (`make`, `ask`, `analyze`, `serve`, `update`, `help`, `version`). Legacy top-level commands such as `tokencap impact` and `tokencap mcp` are compatibility aliases only.
