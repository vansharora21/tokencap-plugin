---
name: impact-analysis
description: Perform risk assessment and dependency impact analysis for files or clusters before executing changes using TokenCap.
---

# TokenCap Impact Analysis Skill

Analyzes code change blast radius, high-risk flags, downstream caller dependencies, and broken constitution rules before refactoring or editing files.

## Workflow

1. Query symbol-level impact via CLI:
   ```bash
   tokencap ask impact <file>:<symbol>
   ```
   Or query the topic via Brain:
   ```bash
   tokencap ask brain <topic>
   ```
   Or call the local MCP tool `tokencap_impact` with the target file list:
   ```json
   {
     "files": ["path/to/file.js"],
     "change_type": "modify"
   }
   ```

2. Review risk levels ([HIGH], [MEDIUM], [LOW]), affected downstream consumers, and constitutional constraints.
3. Check which tests cover the affected symbols:
   ```bash
   tokencap analyze tests --gaps
   ```
4. Plan edits safely to prevent breaking changes in high-risk zones.
