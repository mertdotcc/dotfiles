#!/bin/bash
set -euo pipefail
readonly SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

EMAIL_1="mert1ozturk"
EMAIL_2="gmail.com"

set -x

# author
git config --global user.name "Mert Öztürk"
git config --global user.email "${EMAIL_1}@${EMAIL_2}"

# ignore 
git config --global core.excludesfile ~/.gitignore_global

# editor
# git config --global core.editor "vim"
git config --global core.editor "code --wait"

# branch
git config --global init.defaultBranch "main"