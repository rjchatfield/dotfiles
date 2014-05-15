#!/bin/bash

# ln -s ~/.dotfiles/rjchatfield.zsh-theme $ZSH/themes
# ln -s ~/.dotfiles/gitconfig ~/.gitconfig
# ln -s ~/.dotfiles/zshrc ~/.zshrc

# # Set custom prompt
# setopt PROMPT_SUBST
# autoload -U promptinit
# promptinit
# prompt grb

# # Initialize completion
# autoload -U compinit
# compinit

plugins=(git sublime osx brew bower zsh-syntax-highlighting)
ZSH_THEME="rjchatfield"
HIST_STAMPS="dd/mm/yyyy"

export ZSH=$HOME/.oh-my-zsh

source $ZSH/oh-my-zsh.sh

# Setup zsh-autosuggestions
source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/autosuggestions.zsh
zle-line-init()
{
    zle autosuggest-start
}
zle -N zle-line-init
bindkey '^T' autosuggest-toggle

source ~/.dotfiles/functions
source ~/.dotfiles/exports
source ~/.dotfiles/aliases
# https://github.com/rupa/z
source /usr/local/bin/z.sh

# SOURCE HIDDEN VERSION
source_hidden_dotfiles "zshrc"
