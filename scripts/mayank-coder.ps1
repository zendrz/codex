$ErrorActionPreference = "Stop"

$RepoRoot = Split-Path -Parent $PSScriptRoot
$AgentHome = Join-Path $RepoRoot ".mayank-codex-home"
$ConfigSource = Join-Path $RepoRoot "agent\config.toml"
$ConfigTarget = Join-Path $AgentHome "config.toml"

New-Item -ItemType Directory -Force -Path $AgentHome | Out-Null
Copy-Item $ConfigSource $ConfigTarget -Force
$env:CODEX_HOME = $AgentHome

if (-not (Get-Command codex -ErrorAction SilentlyContinue)) {
    Write-Host "Codex CLI was not found in PATH." -ForegroundColor Yellow
    exit 1
}

Write-Host "Starting MAYANK AI CODER..." -ForegroundColor Cyan
Write-Host "Workspace: $RepoRoot"

Set-Location $RepoRoot
codex @args
