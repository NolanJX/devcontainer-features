#!/bin/bash
set -e

source dev-container-features-test-lib

check "cursor installed" command -v agent
check "mattpocock-skills installed" bash -c "find /root /home -path '*/.agents/skills/*' 2>/dev/null | grep -q ."

reportResults
