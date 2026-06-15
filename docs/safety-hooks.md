# Safety Hooks

This harness ships minimal deterministic Claude Code hooks. They are intentionally narrow: they block common high-risk operations without replacing human review.

## Included hooks

- `block-dangerous.sh`: denies destructive or risky shell patterns such as `rm -rf`, forced pushes, broad chmods, and curl-to-shell installers.
- `block-secrets.sh`: denies reads of common secret-looking paths such as `.env`, SSH private keys, and credentials files.

## Recommended environment

```bash
export HARNESS_ALLOWED_WRITE_ROOTS="$PWD"
```

## Design constraints

Hooks are guardrails, not approval gates. The orchestrator must still inspect diffs, run verification independently, and decide whether the result satisfies the task.
