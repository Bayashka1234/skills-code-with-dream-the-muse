#!/bin/bash
set -euo pipefail

sudo apt-get update
sudo apt-get install sl -y
for rc in "$HOME/.bashrc" "$HOME/.zshrc"; do
  touch "$rc"
  grep -qxF 'export PATH="$PATH:/usr/games"' "$rc" || printf '%s\n' 'export PATH="$PATH:/usr/games"' >> "$rc"
done
