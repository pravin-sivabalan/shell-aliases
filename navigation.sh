# ls when cd command is used
cd() { builtin cd "$@" && ls; }

alias ..="cd .."
alias ...="cd ../../"
alias c="clear"
