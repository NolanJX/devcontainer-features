#!/bin/sh
set -e

echo "Activating feature 'dsh'"

npm install -g @deepseek-ai/dsh@"${VERSION}"
