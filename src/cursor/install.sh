#!/bin/sh
set -e

echo "Activating feature 'cursor'"

su "$_REMOTE_USER" -c "curl https://cursor.com/install -fsS | bash"

if [ "$MATTPOCOCK_SKILLS" = "true" ]; then
    su "$_REMOTE_USER" -c "npx skills add mattpocock/skills -a cursor -g -y"
fi
