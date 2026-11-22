---
name: change-review
description: Build an evidence-backed local review of working-tree, staged, or base-ref changes with risk findings and test gaps using TokenCap. Use before committing or opening a pull request.
---

# TokenCap Change Review Skill

Produces an advisory review packet for pending changes: changed symbols, caller candidates, associated tests, risk findings, and applicable Constitution/ADR context. Everything runs locally; nothing is posted to a Git provider.

## When to Use

- Before committing, or before opening or reviewing a pull request.
- After a refactor, to confirm the affected callers and tests were considered.

## Workflow

1. Build the review packet via CLI:
   ```bash
   tokencap analyze review
   tokencap analyze review --base main
   ```
   Or call the local MCP tool `tokencap_review`:
   ```json
   {
     "base": "main"
   }
   ```
   Use `"staged": true` to review staged changes only.

2. Check risk findings and untested symbols:
   ```bash
   tokencap analyze risk
   tokencap analyze tests --gaps
   ```
   Or call `tokencap_test_map` with `{ "gaps": true }`.

3. For each changed symbol flagged as risky, check its blast radius:
   ```bash
   tokencap ask impact <file>:<symbol>
   ```

4. Treat findings as evidence and verify material ones in source and tests. Preserve the `limitations` and confidence tiers when reporting results; review packets are advisory, not compliance verdicts.
