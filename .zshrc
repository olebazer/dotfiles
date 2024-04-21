#
# ~/.zshrc
#

# oh-my-zsh configuration
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="earl"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# aliases
alias ls='ls --color=auto'
alias ll='ls -lh --color=auto'
alias la='ls -lah --color=auto'
alias vim='nvim'

# keybindings
set -o vi
KEYTIMEOUT=10
bindkey "^P" history-search-backward
bindkey "^N" history-search-forward
