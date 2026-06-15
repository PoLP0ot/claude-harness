# Prompt Caching and Context Discipline

## Principle

Prompt caching is improved by keeping stable context stable and moving dynamic context later in prompts.

## Stable context

Keep these relatively stable:

- `CLAUDE.md`;
- `.claude/rules/*.md`;
- `.claude/skills/*/SKILL.md`;
- harness prompt templates;
- safety policy.

## Dynamic context

Keep these task-specific:

- current task brief;
- relevant file paths;
- acceptance criteria;
- latest error output;
- commands to run.

## Prompt envelope

```markdown
# Stable Harness Contract

# Project Context Pointers

# Task

# Acceptance Criteria

# Commands to Run

# Reporting Format
```

## Anti-patterns

- Pasting whole repositories into prompts.
- Rewriting global instructions every task.
- Putting raw logs into durable memory.
- Letting long interactive sessions accumulate unrelated work.
