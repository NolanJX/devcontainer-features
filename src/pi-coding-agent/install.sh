#!/bin/sh
set -e

echo "Activating feature 'pi-coding-agent'"

npm install -g --ignore-scripts @earendil-works/pi-coding-agent@"${VERSION}"
