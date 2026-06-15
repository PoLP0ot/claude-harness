# Loop Model

## `/goal`, `/loop`, hooks, and cron

| Mechanism | Best use | Persistence | Final verifier |
|---|---|---|---|
| Claude `/goal` | continue work until a measurable condition is met | session-scoped | orchestrator |
| Claude `/loop` | active-session polling or PR maintenance | session-scoped | orchestrator / GitHub |
| Claude hooks | deterministic per-session enforcement | settings-scoped | hook + orchestrator |
| Orchestrator cron | durable background work | durable | orchestrator |

## Recommended use

- Use `/goal` for interactive implementation/repair loops.
- Use `/loop` for temporary polling, CI monitoring, and branch maintenance during an open Claude session.
- Use orchestrator cron for always-on background loops.
- Use hooks for non-negotiable safety or verification gates.

## Example `/goal`

```text
/goal implement the approved plan exactly, satisfy all acceptance criteria, `npm test` exits 0, `npm run lint` exits 0, no files outside the approved scope are modified, and stop after 12 turns if blocked.
```

## Example `/loop`

```text
/loop 5m check whether CI passed and summarize blockers without starting unrelated work
```
