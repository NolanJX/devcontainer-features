#!/bin/bash
set -e

source dev-container-features-test-lib

check "cursor installed" bash -c "find /root /home -path '*/.local/bin/agent' 2>/dev/null | grep -q ."

reportResults
