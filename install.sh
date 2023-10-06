#!/bin/bash
# Install VSCode settings and customisations from this repo to the local system.

[[ -f settings.json && -f extensions.json ]] || { echo "Error: must be run from repository root"; exit 1; }

install() {
  if [[ -f "$(basename "$1")" ]]; then
    echo "Installing $(basename "$1") to $1..."
    cp "$(basename "$1")" "$1"
  fi
}

# macOS
install ~/Library/Application\ Support/Code/User/settings.json
install ~/Library/Application\ Support/Code/User/keybindings.json
install ~/.vscode/extensions/extensions.json
