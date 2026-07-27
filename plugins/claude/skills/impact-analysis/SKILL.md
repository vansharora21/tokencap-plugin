---
name: impact-analysis
description: Perform risk assessment and dependency impact analysis for files or clusters before executing changes using TokenCap v1.7.0.
---

# TokenCap Impact Analysis Skill

Analyzes code change blast radius, high-risk flags, and downstream caller dependencies before refactoring or editing files.

## Workflow

1. Query cluster impact or run CLI:
   ```bash
   tokencap brain <topic> --impact --risk
   ```
   Or call local MCP tool `tokencap_impact` with the target file path.

2. Review risk levels ([HIGH], [MEDIUM], [LOW]) and affected downstream components.
3. Plan edits to prevent breaking changes in high-risk zones.
