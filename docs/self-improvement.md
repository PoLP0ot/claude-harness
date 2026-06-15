# Self-Improvement Workflow

Every completed or blocked run should produce a retrospective. The retrospective is not just a narrative; it routes concrete improvements to the correct layer.

## Inputs

- task brief;
- Claude plan and execution logs;
- plan review;
- git diff and verification output;
- run summary;
- retrospective markdown.

## Routing targets

| Target | Patch when |
|---|---|
| task template | the goal, non-goals, constraints, or acceptance criteria were unclear |
| plan template | Claude omitted mapping, risks, alternatives, or test plan |
| execution wrapper | auth, empty output, budget, max-turn, or metadata capture failed |
| safety hook | a deterministic unsafe action should have been blocked |
| project rule | Claude repeatedly ignores repo-specific conventions |
| schema | run/task metadata lacked a field required for verification |
| runbook | the operator process was ambiguous or too manual |

## Patch workflow

1. Classify the retrospective.
2. Patch the smallest durable layer that prevents recurrence.
3. Run regression checks.
4. Reference the patch in the run summary and issue/PR.
5. Only save orchestrator memory for stable environment facts or user preferences; procedures belong in the harness repo or skills.
