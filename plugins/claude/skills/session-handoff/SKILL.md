---
name: session-handoff
description: Stage a redacted, reviewable summary of the current coding session and export it for the next agent using TokenCap v2.9.0. Use when finishing a task or handing work to another session.
---

# TokenCap Session Handoff Skill

Turns a finished session into a small, redacted handoff that the next agent can load, without storing raw transcripts.

## When to Use

- At the end of a task, when decisions or next steps should survive the conversation.
- When starting a session, to read what the previous one left behind.

## Workflow

1. **Stage a Summary**:
   ```bash
   tokencap serve session save --summary "implemented auth guard" --files src/auth/guard.js
   ```
   Add `--decision "<decision>"` to record a decision made during the session.

2. **Review Staged Captures**:
   ```bash
   tokencap serve session save --list
   tokencap serve session save --approve <session-id>
   tokencap serve session save --reject <session-id>
   ```
   Captures stay in `.tokencap/memory/inbound/` until explicitly approved. Do not approve on the user's behalf without being asked; approval is what makes a capture durable project memory.

3. **Read or Export Approved Sessions**:
   ```bash
   tokencap serve session list
   tokencap serve session handoff
   ```

4. The next agent starts at `.tokencap/agent/START_HERE.md`; approved sessions surface in `.tokencap/memory/current.md` and `tokencap_overview`.
