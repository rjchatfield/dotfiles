#!/bin/bash

#
# DOTFILES
#
DOTFILES=$(pwd)
DOTFILES_ARR=(zshrc gitconfig)

for file in ${DOTFILES_ARR[@]}; do
  echo "-- Removing existing .${file}"
  rm "$HOME/.${file}"
  echo "++ Symlinking .${file}"
  ln -s $DOTFILES/$file "$HOME/.${file}"
done
unset file

#
# ZSH THEME
#
echo "-- Removing existing rjchatfield.zsh-theme"
rm $ZSH/themes/rjchatfield.zsh-theme
echo "++ Symlinking rjchatfield.zsh-theme"
ln -s ~/.dotfiles/rjchatfield.zsh-theme $ZSH/themes

#
# Done
#
echo "Install complete."
