#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# vim
ln -s ${BASEDIR}/vim/.vimrc ~/.vimrc

#tmux
ln -s ${BASEDIR}/tmux/.tmux.conf ~/.tmux.conf

# zsh
ln -s ${BASEDIR}/zsh/.zshrc ~/.zshrc
