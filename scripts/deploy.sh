#!/bin/bash
if [[ $DOTFILES_SCRIPT_INITIALIZED != 'true' ]]; then
    source $(cd $(dirname $0); pwd)/common.sh
fi

ln -s "${FILES_DIR}/.zsh" "${HOME}/.zsh"
ln -s "${FILES_DIR}/.zsh.d" "${HOME}/.zsh.d"
ln -s "${FILES_DIR}/.zshrc" "${HOME}/.zshrc"

git config --global ghq.root ~/repos

