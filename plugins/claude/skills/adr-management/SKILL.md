---
name: adr-management
description: Read, record, and maintain persistent Architecture Decision Records (ADRs) across AI coding sessions using TokenCap v2.5.0.
---

# TokenCap ADR Management Skill

Allows coding agents to document and recall high-impact architectural decisions (database choices, authentication schemas, refactoring directions) that must persist across conversation sessions.

## When to Use

- When making or finalizing an architectural decision that future agents should adhere to.
- When starting a task in an unfamiliar area to check if prior architectural constraints exist.

## Workflow

1. **List Existing Decisions**:
   Call MCP tool `tokencap_manage_adr`:
   ```json
   {
     "action": "list"
   }
   ```

2. **Retrieve Details for an ADR**:
   ```json
   {
     "action": "get",
     "id": 1
   }
   ```

3. **Record a New Architectural Decision**:
   ```json
   {
     "action": "add",
     "title": "Use WebTreeSitter for AST Parsing",
     "decision": "Use web-tree-sitter WASM instead of heavy native node-gyp bindings for multi-platform compatibility."
   }
   ```

4. **Update Status**:
   ```json
   {
     "action": "set-status",
     "id": 1,
     "status": "accepted"
   }
   ```
