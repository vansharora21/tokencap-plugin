#!/usr/bin/env bash
set -e

PLUGIN_REPO="https://github.com/vansharora21/tokencap-plugin.git"

echo "Installing TokenCap CLI..."
npm install -g tokencap

if command -v codex >/dev/null 2>&1; then
  echo "Registering Codex Plugin Marketplace..."
  codex plugin marketplace add "$PLUGIN_REPO"
  codex plugin add tokencap-context@tokencap-official
fi

if command -v claude >/dev/null 2>&1; then
  echo "Registering Claude Code Plugin Marketplace..."
  claude plugin marketplace add "$PLUGIN_REPO"
  claude plugin install tokencap@tokencap-official
fi

echo "TokenCap Plugins setup complete!"
