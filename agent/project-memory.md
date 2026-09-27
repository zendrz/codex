# MAYANK AI CODER — project memory

This file is a human-readable, repository-local memory layer.

## Purpose

Record durable facts that improve future coding sessions without storing credentials or sensitive personal data.

## Rules

- Record architecture decisions, conventions, recurring commands, known pitfalls, and accepted trade-offs.
- Never store API keys, passwords, tokens, session cookies, private keys, or authentication material.
- Prefer short factual entries over conversation transcripts.
- Review this file when starting a substantial task.
- Update it only when a fact is durable and useful to future work.

## Current state

- Agent layer lives under `agent/`.
- Windows launcher: `scripts/mayank-coder.ps1`.
- POSIX launcher: `scripts/mayank-coder.sh`.
- Agent configuration: `agent/config.toml`.
- Runtime remains the existing Codex Rust implementation.
