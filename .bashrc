# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# Aliases
alias ..='cd ..'
alias l='ls'
alias la='l -a'
alias ls='ls -lrth'
alias q='exit'
alias R='R --no-save'
alias reload='source ~/.bashrc'
# OS X specific
alias show='defaults write com.apple.finder AppleShowAllFiles YES;
            killall Finder /System/Library/CoreServices/Finder.app'
alias hide='defaults write com.apple.finder AppleShowAllFiles NO;
            killall Finder /System/Library/CoreServices/Finder.app'
alias wake='pmset noidle'

# Functions
function cd() { builtin cd "$@" && ls; }
function mkcd() { mkdir -p "$@" && cd "$@"; }
function rxiv() { tar -cvzf "$(date '+%Y-%m-%d')_${1}.tgz" --exclude "${1}" ${@}; }

# Exports
export PS1='\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$'
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export R_HISTFILE='~/.Rhistory'
