#!/bin/bash
set -e

source dev-container-features-test-lib

check "claude-code installed" command -v claude
check "superpowers installed" test -d /opt/claude-seed/cache/superpowers-marketplace/superpowers

reportResults
