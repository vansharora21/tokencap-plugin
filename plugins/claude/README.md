# TokenCap for Claude Code

TokenCap indexes your repository once, on your machine, and gives Claude Code only the code a task needs. It maps every file, symbol and import, then answers each question with a ranked pack of files and code spans that fits a token budget and says why each file was included. Secrets are redacted before anything is returned, and the index makes no network calls.

This plugin connects TokenCap's local MCP server to Claude Code and adds skills that tell Claude when to use it.

## Install

From Claude Code, add the plugin from its marketplace:

```
/plugin install tokencap --marketplace vansharora21/tokencap-plugin
```

## Requirements

The plugin runs the TokenCap command-line tool, so install it first. It needs Node.js 18 or later.

```bash
npm install -g tokencap
```

Then build the index once in your project. Claude can also run this for you the first time a skill needs it.

```bash
tokencap make
```

## What's included

The MCP server starts automatically with `tokencap serve --mcp` and gives Claude tools for ranked search, relevant files, dependencies, impact analysis, test mapping, architecture rules, change review and decision records.

The skills:

- **smart-context**: gets the code a question needs instead of grepping the whole repository.
- **impact-analysis**: shows who calls a symbol and what an edit could break, before the edit.
- **constitution**: checks architecture boundaries and project rules.
- **adr-management**: reads and records architecture decisions so they carry across sessions.
- **security-scan**: checks for leaked secrets and untrusted data flowing into risky calls.
- **change-review**: builds an evidence-backed review of pending changes, with risk findings and test gaps.
- **session-handoff**: saves a redacted summary of the session for the next one.

## Benchmark

On 100 real commits from 9 open-source repositories in 7 languages, a TokenCap pack used a median of 18.4x fewer tokens than reading every file that matches a task keyword, and held the files each commit changed 89% of the time. On small repositories the saving is small. Method and limits: https://tokencap.vansharora.app/benchmarks

## Privacy

Everything runs locally. TokenCap does not call any network service, needs no API key or account, and collects no telemetry.

## Links

- Website and docs: https://tokencap.vansharora.app
- npm package: https://www.npmjs.com/package/tokencap
- License: MIT
