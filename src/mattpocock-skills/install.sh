#!/bin/sh
set -e

echo "Activating feature 'mattpocock-skills'"

su "$_REMOTE_USER" -c "npx skills add mattpocock/skills -g -y"
