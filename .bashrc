# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# Aliases
alias ..='cd ..'
alias ls='ls -gh'
alias l='ls'
alias q='exit'
alias R='R --no-save'
alias reload='source ~/.bashrc'

# Functions
cd() { builtin cd "$@" && ls; }
function rxiv(){
  echo $1 $2
  tar -cvzf "$(date '+%Y-%m-%d')_${1}.tgz" ${2}
}

# Exports
export PS1='\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$'
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export R_HISTFILE='~/.Rhistory'
