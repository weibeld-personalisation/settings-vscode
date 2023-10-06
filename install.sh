#!/bin/bash
# Install VSCode settings and customisations from this repo to the local system.

[[ -f settings.json && -f extensions.json ]] || { echo "Error: must be run from repository root"; exit 1; }

install() {
  local target=$1
  local source=$(basename "$target")
  if [[ -f "$source" ]]; then
    if diff "$source" "$target" &>/dev/null; then
      echo "No changes in $source"
    else
      echo "Installing $source to $target..."
      cp "$source" "$target"
    fi
  fi
}

# macOS
install ~/Library/Application\ Support/Code/User/settings.json
install ~/Library/Application\ Support/Code/User/keybindings.json
install ~/.vscode/extensions/extensions.json
