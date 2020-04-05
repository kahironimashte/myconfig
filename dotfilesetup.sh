#!/bin/bash
git init --bare $HOME/.myconfig
alias config='/usr/bin/git --git-dir=$HOME/.myconfig/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
echo "alias config='/usr/bin/git --git-dir=$HOME/.myconfig/ --work-tree=$HOME'" >> $HOME/.baliases
