#!/bin/bash
# Back up VSCode settings and customisations from local system to this repo.

[[ -d .git ]] || { echo "Error: must be run from repository root"; exit 1; }

backup() {
  local source=$1
  if [[ -f "$source" ]]; then
    if diff "$source" "$(basename "$source")" &>/dev/null; then
      echo "No changes in $source"
    else
      echo "Backing up $source..."
      cp "$source" .
    fi
  fi
}

# macOS
backup ~/Library/Application\ Support/Code/User/settings.json
backup ~/Library/Application\ Support/Code/User/keybindings.json
backup ~/.vscode/extensions/extensions.json
