# MAYANK AI CODER

MAYANK AI CODER is the personal agent layer for this Codex fork.

## Architecture

```
User
  ↓
MAYANK AI CODER launcher
  ↓
Codex CLI runtime
  ├── model/provider layer
  ├── sandbox + approvals
  ├── filesystem tools
  ├── shell execution
  ├── MCP
  ├── skills
  └── project instructions
```

The agent layer deliberately does not duplicate Codex's Rust execution engine. It supplies identity, engineering rules, and project-local configuration.

## Windows

```powershell
.\scripts\mayank-coder.ps1
```

Or pass a prompt:

```powershell
.\scripts\mayank-coder.ps1 "Inspect this repository and explain the architecture"
```

## Linux/macOS

```bash
./scripts/mayank-coder.sh
```

The launcher creates `.mayank-codex-home/` locally. Keep that directory out of Git because it can contain authentication/state data.
