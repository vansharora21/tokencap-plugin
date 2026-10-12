---
name: security-scan
description: Perform secret scanning, redaction verification, and source-to-sink taint analysis before committing changes using TokenCap v2.9.0.
---

# TokenCap Security Scan Skill

Ensures no leaked API keys, tokens, or untrusted source-to-sink tainted data flows are introduced into the codebase.

## When to Use

- Before finalizing a feature or committing changes to version control.
- When reviewing untrusted user input handlers or database query construction.

## Workflow

1. Run secret scan via CLI:
   ```bash
   tokencap analyze security scan
   ```
2. Run full repository security audit:
   ```bash
   tokencap analyze security audit
   ```
3. Run static source-to-sink taint analysis:
   ```bash
   tokencap analyze taint
   ```
4. Check returned findings:
   - **Secret Leaks**: Hardcoded credentials, private keys, or API tokens.
   - **Taint Flows**: User input passed directly into sensitive sinks (e.g. `eval`, SQL queries, raw shell commands).
5. Remediate flagged issues immediately before proceeding. Findings are evidence, not verdicts; confirm each one in source.
