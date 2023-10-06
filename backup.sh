#!/bin/bash
# Back up VSCode settings and customisations from local system to this repo.

[[ -d .git ]] || { echo "Error: must be run from repository root"; exit 1; }

backup() {
  if [[ -f "$1" ]]; then
    echo "Backing up $1..."
    cp "$1" .
  fi
}

# macOS
backup ~/Library/Application\ Support/Code/User/settings.json
backup ~/Library/Application\ Support/Code/User/keybindings.json
backup ~/.vscode/extensions/extensions.json
