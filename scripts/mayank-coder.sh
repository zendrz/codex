#!/usr/bin/env bash
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
AGENT_HOME="$REPO_ROOT/.mayank-codex-home"

mkdir -p "$AGENT_HOME"
cp "$REPO_ROOT/agent/config.toml" "$AGENT_HOME/config.toml"
export CODEX_HOME="$AGENT_HOME"

if ! command -v codex >/dev/null 2>&1; then
  echo "Codex CLI was not found in PATH." >&2
  exit 1
fi

cd "$REPO_ROOT"
exec codex "$@"
