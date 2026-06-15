# Instruction Model

## Hierarchy

1. Safety and approval gates.
2. User intent and product constraints.
3. Task acceptance criteria.
4. Approved technical plan.
5. Repo-specific rules and conventions.
6. Claude local discoveries.

## Task readiness

A task is ready for Claude planning only when it has:

- user intent;
- product goal;
- non-goals;
- known constraints;
- acceptance criteria;
- risk flags;
- target repository;
- required verification commands or a plan to discover them.

## Plan review decisions

The orchestrator can return:

- `approve` — execute as written;
- `approve_with_patches` — execute with explicit modifications;
- `request_replan` — Claude must revise before execution;
- `ask_human` — product/security/cost decision required;
- `reject` — plan violates constraints or is unsafe.
