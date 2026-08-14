#!/bin/bash
set -e

source dev-container-features-test-lib

check "dsh installed" command -v dsh

reportResults
