#!/bin/bash
set -e

source dev-container-features-test-lib

check "pi-coding-agent installed" command -v pi

reportResults
