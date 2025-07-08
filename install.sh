#!/bin/sh
set -e

echo "Installing VS Code extensions..."

# Install each extension listed in vscode-extensions.txt
while read extension; do
    if [ ! -z "$extension" ]; then
        code --install-extension "$extension" || true
    fi
done < "$(dirname "$0")/vscode-extensions.txt"
