#!/usr/bin/env bash
# install-claude-harness.sh — Install the Claude Code harness into a project
# Usage: ./install.sh /path/to/project
set -euo pipefail

PROJECT="${1:-}"
if [[ -z "$PROJECT" ]]; then
  echo "Usage: install.sh <project-dir>"
  exit 2
fi

HARNESS_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "=== Installing Claude Code harness into $PROJECT ==="

mkdir -p "$PROJECT/.claude/"{skills,rules,agents,hooks}
mkdir -p "$PROJECT/scripts"

# Copy harness artifacts
cp -r "$HARNESS_DIR/skills/"* "$PROJECT/.claude/skills/"
cp -r "$HARNESS_DIR/rules/"* "$PROJECT/.claude/rules/"
cp -r "$HARNESS_DIR/agents/"* "$PROJECT/.claude/agents/"
cp "$HARNESS_DIR/hooks/"*.sh "$PROJECT/.claude/hooks/"
chmod +x "$PROJECT/.claude/hooks/"*.sh

# Copy settings
cp "$HARNESS_DIR/settings.json" "$PROJECT/.claude/settings.json"

# Generate settings.local.json with PROJECT_ROOT replaced
sed "s|PROJECT_ROOT|$PROJECT|g" "$HARNESS_DIR/settings.local.json.template" > "$PROJECT/.claude/settings.local.json"

# Copy claude-state.sh
cp "$HARNESS_DIR/scripts/claude-state.sh" "$PROJECT/scripts/"
chmod +x "$PROJECT/scripts/claude-state.sh"

# Copy CLAUDE.md template if project doesn't have one
if [[ ! -f "$PROJECT/CLAUDE.md" ]]; then
  cp "$HARNESS_DIR/templates/CLAUDE.md" "$PROJECT/CLAUDE.md"
fi

# Deploy memory templates to ~/.claude/templates/project-memory/
mkdir -p "$HOME/.claude/templates/project-memory"
cp "$HARNESS_DIR/templates/project-memory/"*.md "$HOME/.claude/templates/project-memory/"

echo "✓ Harness installed"
echo "  Skills:   $(ls "$PROJECT/.claude/skills/" | wc -l)"
echo "  Rules:    $(ls "$PROJECT/.claude/rules/" | wc -l)"
echo "  Agents:   $(ls "$PROJECT/.claude/agents/" | wc -l)"
echo "  Hooks:    $(ls "$PROJECT/.claude/hooks/" | wc -l)"
