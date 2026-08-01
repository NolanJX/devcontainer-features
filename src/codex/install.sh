#!/bin/sh
set -e

echo "Activating feature 'codex'"

su "$_REMOTE_USER" -c "curl -fsSL https://chatgpt.com/codex/install.sh | CODEX_NON_INTERACTIVE=true CODEX_INSTALLER_USE_RELEASES_OPENAI_COM=false sh -s -- --release $VERSION"
