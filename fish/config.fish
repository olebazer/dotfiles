if status is-interactive
    # disable greeting
    set fish_greeting

    # Aliases
    alias ls='exa --icons'
    alias ll='exa -l --icons'
    alias la='exa -la --icons'
    alias pru='sudo pacman -Rns $(pacman -Qdtq)'
    alias vim='nvim'
    alias tree='exa --tree --icons'

    # Prompt
    #starship init fish | source
end
