---
name: smart-context
description: Retrieve token-optimized codebase context using TokenCap v2.5.0 Smart Context engine. Use when asking questions about codebase implementation, dependencies, or logic.
---

# TokenCap Smart Context Skill

This skill provides deep, token-optimized context retrieval for Claude Code by connecting directly to the local `tokencap mcp` server or executing `tokencap ask "<question>"`.

## When to Use

- When needing targeted code context for a question (e.g., "How does auth token rotation work?").
- When starting work on a new feature or debugging an existing module.

## Workflow

1. Execute query via CLI:
   ```bash
   tokencap ask "<question>"
   ```
   Or call local TokenCap MCP tools:
   - `tokencap_search` - Multi-source ranked search across clusters, files, constitution rules, and graph nodes
   - `tokencap_files` - Locate relevant files ranked by relevance, graph connectivity, recency, and risk
   - `tokencap_overview` - High-level repo summary and cluster status
   - `tokencap_cluster` - Deep dive into a specific domain cluster
   - `tokencap_constitution` - Retrieve governing architecture and security rules

2. TokenCap automatically runs multi-source relevance scoring across:
   - **Knowledge Graph** (caller / callee edges)
   - **Brain Memory & Notes**
   - **Recent Git Diff & Commit History**
   - **Impact & Risk Ratings**
3. Read returned AST summaries and scored snippets.
