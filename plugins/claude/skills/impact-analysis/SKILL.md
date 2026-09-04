---
name: impact-analysis
description: Perform risk assessment and dependency impact analysis for files or clusters before executing changes using TokenCap v2.5.0.
---

# TokenCap Impact Analysis Skill

Analyzes code change blast radius, high-risk flags, downstream caller dependencies, and broken constitution rules before refactoring or editing files.

## Workflow

1. Query impact via CLI:
   ```bash
   tokencap impact <file-or-symbol>
   ```
   Or query the topic via Brain:
   ```bash
   tokencap ask brain "<topic>"
   ```
   Or call the local MCP tool `tokencap_impact` with the target file list:
   ```json
   {
     "files": ["path/to/file.js"],
     "change_type": "modify"
   }
   ```

2. Review risk levels ([HIGH], [MEDIUM], [LOW]), affected downstream consumers, and constitutional constraints.
3. Plan edits safely to prevent breaking changes in high-risk zones.
