# Claude Code Harness

Reusable `.claude/` configuration for AI-assisted development with Claude Code under Hermes Agent orchestration.

## What's included

- **`skills/`** — 17 Claude Code skills: React, Node.js, Python, Docker, Git, PR review, UX design, testing, etc.
- **`rules/`** — 11 rules: TypeScript, Python, React, Docker, vitest, pytest, memory maintenance, etc.
- **`agents/`** — 7 expert agents: React frontend, Node backend, Python ML/LLM, UX designer, OpenTofu ops, config expert
- **`hooks/`** — Security hooks: block dangerous commands, block secret file access
- **`settings.json`** — Base permissions (allow git/npm/docker, deny .env/sudo/rm -rf)
- **`settings.local.json.template`** — Hook-based state signaling for Hermes (PreToolUse/Stop/Notification → `/tmp/claude-state.json`)
- **`scripts/claude-state.sh`** — State signaling script called by hooks
- **`scripts/install.sh`** — One-command install into any project
- **`templates/CLAUDE.md`** — Project contract template

## Quick Install

```bash
git clone https://github.com/PoLP0ot/claude-harness.git /tmp/claude-harness
/tmp/claude-harness/scripts/install.sh /path/to/your-project
```

Or via Hermes `hermes-project-init` (auto-clones and installs).

## How it works with Hermes

```
Hermes (PM)                    Claude Code (tmux, --dangerously-skip-permissions)
    │                                    │
    ├─ dispatches task ─────────────────→│
    │                                    ├─ PreToolUse hook → state=working
    │                                    ├─ Implements via TDD
    │                                    ├─ Stop hook → state=idle
    │←─ polls /tmp/claude-state.json ────┤
    │                                    │
    ├─ QA gate (tests+tsc+build+visual)  │
    ├─ commit + push                     │
    └─ next task                         │
```

## Files

```
claude-harness/
├── README.md
├── settings.json                  # Base permissions
├── settings.local.json.template   # Hook config (PROJECT_ROOT placeholder)
├── skills/                        # 17 Claude Code skills
├── rules/                         # 11 language/framework rules
├── agents/                        # 7 expert agent prompts
├── hooks/                         # Security hooks
├── scripts/
│   ├── install.sh                 # Install harness into a project
│   └── claude-state.sh            # State signaling for Hermes
└── templates/
    └── CLAUDE.md                  # Project contract template
```

## Related

- [Hermes Workshop Harness](https://github.com/PoLP0ot/hermes-workshop-harness) — Hermes profile for the full workflow
- [harness-workflow skill](https://github.com/PoLP0ot/hermes-workshop-harness) — Universal project pipeline skill

## License

MIT
