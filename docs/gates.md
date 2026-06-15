# Gates

## Gate types

### Readiness gate

Before planning:

- goal is clear;
- non-goals are explicit;
- acceptance criteria are testable;
- target repo is known;
- risk level is known.

### Plan gate

Before execution:

- plan maps to each acceptance criterion;
- scope is minimal;
- risky decisions are escalated;
- verification is sufficient;
- rollback is possible;
- forbidden files/actions are not included.

### Execution gate

During execution:

- bounded turns or goal condition;
- allowed tools only;
- no secret reads;
- no destructive commands;
- no unauthorized push/deploy.

### Verification gate

Before declaring done:

- inspect git diff;
- run tests/lint/build when available;
- compare changed files with approved scope;
- record exact blockers if verification cannot run.

### Human approval gate

Require human approval for:

- merge/deploy;
- migrations;
- destructive commands;
- secrets;
- paid external services;
- force push;
- product/strategy tradeoffs.
