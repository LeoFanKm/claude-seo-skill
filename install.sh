#!/usr/bin/env bash
set -e

REPO="https://github.com/leofankm/claude-seo-skill"
SKILLS_DIR="${HOME}/.claude/skills"
AGENTS_DIR="${HOME}/.claude/agents"

echo "🔍 Installing claude-seo-skill..."

# Check for git
if ! command -v git &> /dev/null; then
  echo "❌ git is required. Please install git first."
  exit 1
fi

# Create temp dir
TMP_DIR=$(mktemp -d)
trap "rm -rf $TMP_DIR" EXIT

echo "📦 Cloning repository..."
git clone --depth 1 "$REPO" "$TMP_DIR/claude-seo-skill"

# Create skill dirs
mkdir -p "$SKILLS_DIR" "$AGENTS_DIR"

echo "🗂  Copying skills..."
cp -r "$TMP_DIR/claude-seo-skill/skills"/seo* "$SKILLS_DIR/"

echo "🤖 Copying agents..."
cp "$TMP_DIR/claude-seo-skill/agents"/seo*.md "$AGENTS_DIR/"

echo ""
echo "✅ claude-seo-skill installed successfully!"
echo ""
echo "25 skills → $SKILLS_DIR"
echo "27 agents → $AGENTS_DIR"
echo ""
echo "Quick start:"
echo "  /seo audit https://yoursite.com"
echo "  /seo keywords \"your topic\""
echo "  /seo geo https://your-page.com"
echo ""
echo "Full docs: https://github.com/leofankm/claude-seo-skill"
