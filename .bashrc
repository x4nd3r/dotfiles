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

# Functions
function cd() { builtin cd "$@" && ls; }
function mkcd() { mkdir -p "$@" && cd "$@"; }
function rxiv() { tar -cvzf "$(date '+%Y-%m-%d')_${1}.tgz" --exclude "${1}" ${@}; }
function countdown() {(
  IFS=:
  set -- $*
  secs=$(( ${1#0} * 3600 + ${2#0} * 60 + ${3#0} ))
  while [ $secs -gt 0 ]
  do
    sleep 1 &
    printf "\r%02d:%02d:%02d" $((secs/3600)) $(( (secs/60)%60)) $((secs%60))
    secs=$(( $secs - 1 ))
    wait
  done
  echo
)}

# Exports
export PS1='\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$'
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export R_HISTFILE='~/.Rhistory'
