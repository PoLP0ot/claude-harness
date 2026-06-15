# Memory Model

## Principle

Durable memory must be explicit, layered, and auditable. Model context is not a source of truth.

## Layers

| Layer | Store | Use for | Avoid |
|---|---|---|---|
| Product memory | Obsidian / wiki | goals, decisions, roadmap, risks, retrospectives | raw logs |
| Repo instructions | `CLAUDE.md`, `.claude/rules/` | stable engineering rules and commands | long workflows |
| Claude skills | `.claude/skills/*/SKILL.md` | reusable workflows loaded on demand | tiny always-on rules |
| Claude auto-memory | Claude project memory | discovered project patterns | hard guarantees |
| Orchestrator memory | orchestrator persistent memory | compact stable user/env facts | progress/status |
| Logs | run log directory | raw evidence and debugging | curated decisions |

## `CLAUDE.md` guidance

Keep `CLAUDE.md` concise. Target under 200 lines. It should contain:

- project overview;
- architecture pointers;
- key commands;
- definition of done;
- safety constraints;
- links to rules and skills.

Move large procedures into skills.

## Self-improvement routing

When a run reveals a repeated issue, patch the correct layer:

- prompt ambiguity -> task/plan template;
- missing coding rule -> `.claude/rules/`;
- missing workflow -> `.claude/skills/`;
- missing hard gate -> hook;
- product decision -> decision log;
- stable environment quirk -> orchestrator memory;
- reusable procedure -> skill.
