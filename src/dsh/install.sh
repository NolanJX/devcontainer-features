#!/bin/sh
set -e

echo "Activating feature 'dsh'"

if ! command -v node >/dev/null 2>&1; then
    echo "Error: Node.js >= 24.9 is required. Add \"ghcr.io/devcontainers/features/node:2\": { \"version\": \"24\" } to devcontainer.json." >&2
    exit 1
fi

# Upstream's minimum Node version is 24.9 (decided 2026-10-15; enforced in the engines field since 0.2.2-alpha.2). Older npm manifests don't declare engines — fail early instead of at runtime.
node -e 'const v = process.versions.node.split(".").map(Number); if (v[0] < 24 || (v[0] === 24 && v[1] < 9)) { console.error(`dsh requires Node.js >= 24.9.0 (found ${process.versions.node}). See https://github.com/deepseek-ai/deepseek-harness/blob/master/docs/upgrade-guide/v0.2.1-rc.2/node-24/guide.md`); process.exit(1); }'

npm install -g @deepseek-ai/dsh@"${VERSION}"
