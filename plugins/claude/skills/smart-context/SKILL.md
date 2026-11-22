---
name: smart-context
description: Retrieve token-optimized codebase context using TokenCap Smart Context engine. Use when asking questions about codebase implementation, dependencies, or logic.
---

# TokenCap Smart Context Skill

This skill provides deep, token-optimized context retrieval for Claude Code by connecting directly to the local `tokencap serve --mcp` server or executing `tokencap ask "<question>"`.

## When to Use

- When needing targeted code context for a question (e.g., "How does auth token rotation work?").
- When starting work on a new feature or debugging an existing module.

## Workflow

1. Make sure intelligence exists. If `.tokencap/` is missing, run:
   ```bash
   tokencap make
   ```
   Then read `.tokencap/agent/START_HERE.md` and `.tokencap/agent/allowed-context.json` before scanning the repository broadly.

2. Execute query via CLI:
   ```bash
   tokencap ask "<question>"
   tokencap ask brain <topic>
   ```
   Or call local TokenCap MCP tools:
   - `tokencap_search` - Multi-source ranked search across clusters, files, constitution rules, and graph nodes
   - `tokencap_files` - Locate relevant files ranked by relevance, graph connectivity, recency, and risk
   - `tokencap_overview` - High-level repo summary and cluster status
   - `tokencap_cluster` - Deep dive into a specific domain cluster
   - `tokencap_dependencies` - Upstream/downstream dependency walk for a target
   - `tokencap_constitution` - Retrieve governing architecture and security rules

3. TokenCap automatically runs multi-source relevance scoring across:
   - **Knowledge Graph** (caller / callee edges)
   - **Brain Memory & Notes**
   - **Recent Git Diff & Commit History**
   - **Impact & Risk Ratings**
4. Read returned AST summaries and scored snippets. Results are advisory evidence; verify uncertain conclusions in source.
