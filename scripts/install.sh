#!/bin/bash
# Install VSCode settings and extensions from this repository to the system.

[[ -f settings.json && -f extensions.json ]] || { echo "Error: must be run from repository root"; exit 1; }

# macOS
target=~/Library/Application\ Support/Code/User/settings.json
echo "Installing settings.json to $target"
cp settings.json "$target"

# macOS
target=~/.vscode/extensions/extensions.json
echo "Installing extensions.json to $target"
cp extensions.json "$target"
