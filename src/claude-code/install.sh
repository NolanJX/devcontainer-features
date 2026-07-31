#!/bin/sh
set -e

echo "Activating feature 'claude-code'"

npm install -g @anthropic-ai/claude-code@"${VERSION}"

if [ "$MATTPOCOCK_SKILLS" = "true" ]; then
    CLAUDE_CODE_PLUGIN_CACHE_DIR=/opt/claude-seed claude plugin marketplace add anthropics/claude-plugins-official
    CLAUDE_CODE_PLUGIN_CACHE_DIR=/opt/claude-seed claude plugins install mattpocock-skills
fi

if [ "$SUPERPOWERS" = "true" ]; then
    CLAUDE_CODE_PLUGIN_CACHE_DIR=/opt/claude-seed claude plugin marketplace add obra/superpowers-marketplace
    CLAUDE_CODE_PLUGIN_CACHE_DIR=/opt/claude-seed claude plugins install superpowers@superpowers-marketplace
fi
