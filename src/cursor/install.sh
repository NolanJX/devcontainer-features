#!/bin/sh
set -e

echo "Activating feature 'cursor'"

su "$_REMOTE_USER" -c "curl https://cursor.com/install -fsS | bash"
