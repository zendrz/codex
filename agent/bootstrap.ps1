$ErrorActionPreference = "Stop"

$Root = Split-Path -Parent $PSScriptRoot
$Memory = Join-Path $Root "agent\project-memory.md"

if (-not (Test-Path $Memory)) {
    throw "Missing agent/project-memory.md"
}

Write-Host "MAYANK AI CODER" -ForegroundColor Cyan
Write-Host "Agent configuration: agent/config.toml"
Write-Host "Project memory: agent/project-memory.md"
Write-Host "Command playbooks: agent/commands/"
Write-Host ""
Write-Host "Available modes: BUILD DEBUG REVIEW RESEARCH PLAN"
Write-Host "Use scripts\mayank-coder.ps1 to start Codex."
