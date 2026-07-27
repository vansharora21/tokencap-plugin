---
name: smart-context
description: Retrieve token-optimized codebase context using TokenCap v1.7.0 Smart Context engine. Use when asking questions about codebase implementation, dependencies, or logic.
---

# TokenCap Smart Context Skill

This skill provides deep, token-optimized context retrieval for Claude Code by connecting directly to the local `tokencap mcp` server or executing `tokencap ask "<question>"`.

## When to Use

- When needing targeted code context for a question (e.g., "How does auth token rotation work?").
- When starting work on a new feature or debugging an existing module.

## Workflow

1. Execute query against local TokenCap MCP server tool `tokencap_ask` or run CLI:
   ```bash
   tokencap ask "<question>"
   ```
2. TokenCap automatically runs multi-source relevance scoring across:
   - **Knowledge Graph** (caller / callee edges)
   - **Brain Memory & Notes**
   - **Recent Git Diff & Commit History**
   - **Impact & Risk Ratings**
3. Read returned AST summaries and scored snippets.
