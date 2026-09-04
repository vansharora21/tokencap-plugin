---
name: tokencap-context
description: Universal Self-Loading Context Layer for OpenAI Codex. Prevents full repo rescans by consuming local TokenCap v2.5.0 intelligence.
---

# TokenCap Context Skill for Codex

Equips Codex agents with TokenCap's Self-Loading Universal Context Layer to eliminate blind repository crawling and token waste.

## Usage Protocol

1. **Self-Loading Entry Point**:
   Before initiating broad file searches, read:
   ```markdown
   .tokencap/agent/START_HERE.md
   ```
2. **File Routing & Task Context**:
   Consult `.tokencap/agent/allowed-context.json` to find the exact files relevant to the active task.
3. **Deep Queries & Architecture**:
   - Query targeted logic: `tokencap ask "<question>"`
   - Check risk & blast radius: `tokencap impact <file-or-symbol>`
   - Check architecture rules: `tokencap analyze constitution`
   - Or query the local TokenCap MCP server (`tokencap_search`, `tokencap_overview`, `tokencap_files`).
