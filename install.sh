#!/usr/bin/bash

# install.sh
# Link new dotfiles to the current system and back up old files or links
# Author: Olivier Lamarre <https://github.com/olamarre>

DOTFILES_REPO_DIR="$(dirname "$(readlink -f "$0")")"
BACKUP_DIR="${HOME}/old_dotfiles"

# Create backup dir if it doesn't already exist
mkdir -p $BACKUP_DIR

# Backup old dotfiles (files or symlinks) already on system
# and create new symlinks to dotfiles in current repo
# Args:
#   $1 (string): path to new dotfile in repo
#   $2 (string): path to symlink on system
backup_and_link () {
    if [ -f "$2" ] || [ -L "$2" ]; then
        echo "Moving old dotfile or link $2 to ${BACKUP_DIR}"
        mv "$2" "${BACKUP_DIR}"
    fi
    echo "Creating symlink to $1"
    ln -s "$1" "$2"    
}

backup_and_link "${DOTFILES_REPO_DIR}/zsh/.zshrc" "${HOME}/.zshrc"
echo "---"
backup_and_link "${DOTFILES_REPO_DIR}/vim/.vimrc" "${HOME}/.vimrc"
echo "---"
backup_and_link "${DOTFILES_REPO_DIR}/tmux/.tmux.conf" "${HOME}/.tmux.conf"

