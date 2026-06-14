# CLAUDE.md — Project Operating Contract

## Authority model
- Hermes owns product intent, scope, prioritization, and approval gates.
- Claude Code is the engineering executor.
- Claude Code must not make product, pricing, deployment, merge, or destructive decisions without explicit approval.

## Stack (MANDATORY — defined by /plan, NON-NEGOTIABLE)
TO BE FILLED BY /plan — stack, database, frameworks, APIs, deployment target.

## Harness execution standard
1. Understand the task and acceptance criteria.
2. Produce a technical plan before editing.
3. Implement the smallest scoped change.
4. Run validation commands.
5. Report real command output and changed files.
6. Do not commit, push, deploy, or delete broadly unless the task explicitly says so.

## Project memory (MANDATORY — read at startup)
AT STARTUP, BEFORE ANY CODE CHANGE: Read ALL .claude/memory/*.md files.
After impactful changes, update the relevant memory file(s).

## Core Principles
- No new dependencies or architectural changes without explicit confirmation.
- TDD: RED → GREEN → REFACTOR → CHECK. Always.
- Minimum code that solves the problem. Nothing speculative.
