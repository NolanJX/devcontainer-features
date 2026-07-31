#!/bin/bash
set -e

source dev-container-features-test-lib

check "claude-code installed" bash -c "find /root /home -path '*/.local/bin/claude' 2>/dev/null | grep -q ."

reportResults
