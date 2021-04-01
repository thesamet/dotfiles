# symlink from ~/.bashrc and source this from bash_profile.

CONFIGS_DIR=$(dirname `readlink ~/.bashrc`)

# Execute os-specific script
if [[ $OSTYPE =~ "darwin" ]]; then
  source $CONFIGS_DIR/bashrc.macosx.sh
fi

if [[ $OSTYPE =~ "linux" ]]; then
  source $CONFIGS_DIR/bashrc.linux.sh
fi

if [ -f "$HOME/.bashrc.local" ]; then
  source $HOME/.bashrc.local
fi

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

if [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi

# Basic set up
export EDITOR=vim

# History
export HISTIGNORE="&:ls:[bf]g:exit"
shopt -s cmdhist     # store multiline commands in history
shopt -s histappend  # do not overwrite history file.

export HISTCONTROL=ignoreboth
export HISTFILESIZE=1000000000
export HISTSIZE=1000000
export PROMPT_COMMAND='history -a'
export PYTHONSTARTUP=$CONFIGS_DIR/pystartup.py

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

function gclone {
  echo "Cloning git project '$1'"
  git clone ssh://thesamet@apropo.thesamet.com/var/git/$*
}

# Time functions that I like
function time_sec() {
  python -c "import datetime; print datetime.datetime.fromtimestamp($1).strftime('%d %b %Y %T')"
}
function time_usec() {
  python -c "import datetime; print datetime.datetime.fromtimestamp($1/1000000).strftime('%d %b %Y %T')"
}
function epoch_time() {
  python -c "import time; print time.mktime(time.strptime('$1', '%Y/%m/%d-%H:%M:%S'))"
}

function green() {
echo -e '\033[0;32m'$1'\033[0;37m'
}

function red() {
echo -e '\033[0;31m'$1'\033[0;37m'
}

function cd() {
  pushd "$1" > /dev/null
}

function psgrep() { ps axuf | grep -v grep | grep "$@" -i --color=auto; }
function fname() { find . -iname "*$@*"; }

alias gcd='cd $(git rev-parse --show-toplevel)'

alias bd="popd"

alias grep='grep --color=auto'
alias tmux='tmux -2'
alias add_action='osascript ~/bin/add_action.scpt'

alias t="bash $HOME/bin/todo.sh"
alias l="less"
alias hd='od -Ax -tx1z -v'

alias travis="docker run -ti -v:/root:/home/thesamet/.travis travis"


# added by travis gem
[ -f /home/thesamet/.travis/travis.sh ] && source /home/thesamet/.travis/travis.sh

[ -s "/home/thesamet/.jabba/jabba.sh" ] && source "/home/thesamet/.jabba/jabba.sh"
