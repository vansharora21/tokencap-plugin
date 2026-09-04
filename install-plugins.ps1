[CmdletBinding()]
param(
  [switch]$SkipCli,
  [switch]$SkipCodex,
  [switch]$SkipClaude
)

$ErrorActionPreference = "Stop"
$pluginRepo = "https://github.com/vansharora21/tokencap-plugin.git"

function Require-Command([string]$name, [string]$hint) {
  if (-not (Get-Command $name -ErrorAction SilentlyContinue)) {
    Write-Warning "$name was not found. $hint"
    return $false
  }
  return $true
}

if (-not $SkipCli) {
  if (-not (Require-Command "npm" "Install Node.js 18+ and rerun this script.")) { exit 1 }
  Write-Host "Installing/verifying TokenCap CLI..." -ForegroundColor Cyan
  npm install -g tokencap
}

if (-not $SkipCodex -and (Require-Command "codex" "Install Codex CLI to enable Codex plugin integration.")) {
  Write-Host "Registering TokenCap Codex Plugin Marketplace..." -ForegroundColor Green
  codex plugin marketplace add $pluginRepo
  codex plugin add tokencap-context@tokencap-official
}

if (-not $SkipClaude -and (Require-Command "claude" "Install Claude Code CLI to enable Claude Code plugin integration.")) {
  Write-Host "Registering TokenCap Claude Code Plugin Marketplace..." -ForegroundColor Green
  claude plugin marketplace add $pluginRepo
  claude plugin install tokencap@tokencap-official
}

Write-Host "TokenCap Plugins setup complete! Run 'tokencap make' in any project to initialize context." -ForegroundColor Green
