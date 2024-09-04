if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting ""

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/Go/bin:$PATH"

starship init fish | source
zoxide init fish | source
thefuck --alias | source
fzf --fish | source

alias vim nvim
alias zz "z -"
alias ls eza
alias tree "eza --tree"
alias cat bat
alias fzf "fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}' --preview-window '~3'"

