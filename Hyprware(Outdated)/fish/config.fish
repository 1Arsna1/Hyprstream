if status is-interactive
# Commands to run in interactive sessions can go here
starship init fish | source
set fish_greeting " "
nitch
alias nv='nvim'
alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
end
