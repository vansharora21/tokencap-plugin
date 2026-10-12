---
name: constitution
description: Verify architecture boundaries, framework conventions, and hard project rules using TokenCap v2.9.0 Constitution Engine. Use before writing or refactoring code.
---

# TokenCap Constitution Skill

Enforces repository architecture constraints, layer boundaries, and design rules to prevent architecture drift.

## When to Use

- Before writing new modules, services, or endpoints.
- When refactoring cross-cutting concerns (e.g. moving database logic into routes).
- To verify proposed changes adhere to established project rules.

## Workflow

1. Query constitution rules via CLI:
   ```bash
   tokencap analyze constitution
   ```
   Or query rules for a specific scope/file via the `tokencap_constitution` MCP tool:
   ```json
   {
     "file": "src/routes/user.js",
     "scope": "routes"
   }
   ```

2. Review active constraints:
   - Check non-negotiable rules (e.g., "Core library code lives in lib/ - keep it framework-agnostic").
   - Check boundary contracts between layers (Routes -> Service -> Database).

3. Structure implementations to satisfy all matching constitution rules.
