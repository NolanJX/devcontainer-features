#!/bin/sh
set -e

echo "Activating feature 'claude-code'"

su "$_REMOTE_USER" -c "curl -fsSL https://claude.ai/install.sh | bash -s $VERSION"

CLAUDE_BIN="$_REMOTE_USER_HOME/.local/bin/claude"

if [ "$MATTPOCOCK_SKILLS" = "true" ]; then
    CLAUDE_CODE_PLUGIN_CACHE_DIR=/opt/claude-seed "$CLAUDE_BIN" plugin marketplace add anthropics/claude-plugins-official
    CLAUDE_CODE_PLUGIN_CACHE_DIR=/opt/claude-seed "$CLAUDE_BIN" plugins install mattpocock-skills
fi

if [ "$SUPERPOWERS" = "true" ]; then
    CLAUDE_CODE_PLUGIN_CACHE_DIR=/opt/claude-seed "$CLAUDE_BIN" plugin marketplace add obra/superpowers-marketplace
    CLAUDE_CODE_PLUGIN_CACHE_DIR=/opt/claude-seed "$CLAUDE_BIN" plugins install superpowers@superpowers-marketplace
fi
