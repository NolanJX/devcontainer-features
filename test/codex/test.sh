#!/bin/bash
set -e

source dev-container-features-test-lib

check "codex installed" bash -c "find /root /home -path '*/.local/bin/codex' 2>/dev/null | grep -q ."

reportResults
