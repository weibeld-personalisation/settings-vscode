#!/bin/bash
# Back up current VSCode settings and extensions to this repository. 

[[ -d .git ]] || { echo "Error: must be run from repository root"; exit 1; }

# macOS
echo "Backing up settings.json"
cp ~/Library/Application\ Support/Code/User/settings.json settings.json

# macOS
echo "Backing up extensions.json"
cp ~/.vscode/extensions/extensions.json extensions.json
