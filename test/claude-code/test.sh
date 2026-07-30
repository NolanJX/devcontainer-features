#!/bin/bash
set -e

source dev-container-features-test-lib

check "claude-code installed" command -v claude

reportResults
