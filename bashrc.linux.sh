if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

alias svs='supervisorctl -c ~/supervisord.conf'

[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

export PS1="\[\033[00;32m\]\u@\h \[\033[00;33m\]\W \$ \[\033[00m\]"

# GIT_COMP=/etc/bash_completion.d/git
GIT_COMP=/usr/share/bash-completion/completions/git

source ~/.bash_tools/git-completion.bash
source ~/.bash_tools/git-prompt.sh

PS1='\[\033[00;32m\]\u@\h \[\033[00;33m\]\W$(__git_ps1 " (%s)") \$ \[\033[00m\]'

alias ls="ls --color"

