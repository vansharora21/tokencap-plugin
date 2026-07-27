---
name: tokencap-context
description: Universal Self-Loading Context Layer for OpenAI Codex. Prevents full repo rescans by consuming .tokencap intelligence.
---

# TokenCap Context Skill for Codex

This skill equips Codex with TokenCap's Self-Loading Universal Context Layer.

## Usage Protocol

1. Before scanning the repository from scratch, check:
   `.tokencap/agent/START_HERE.md`
2. Inspect `allowed-context.json` for file routing.
3. Query `tokencap ask "<question>"` or local TokenCap MCP tools for targeted context.
