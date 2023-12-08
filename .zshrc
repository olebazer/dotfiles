#
# ~/.zshrc
#

# oh-my-zsh configuration
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(
    git
    zsh-syntax-highlighting
    zsh-autosuggestions
)
source $ZSH/oh-my-zsh.sh

# aliases
alias ls='eza --icons'
alias ll='eza -l --icons'
alias la='eza -la --icons'
alias vim='nvim'

# keybindings
bindkey "^@" autosuggest-accept
bindkey "^P" history-search-backward
bindkey "^N" history-search-forward
bindkey "^H" beginning-of-line
bindkey "^J" end-of-line
bindkey "^U" kill-whole-line
bindkey "^O" forward-word
bindkey "^K" backward-word

# use starship prompt
#eval "$(starship init zsh)"
