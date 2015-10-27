export PATH=$HOME/bin:/usr/local/share/python:/usr/local/bin:$EC2_HOME/bin:$PATH:$HOME/node_modules/.bin:/usr/local/share/npm/bin
export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

if [ -f "/usr/local/etc/bash_completion.d/git-completion.bash" ]; then
  source "/usr/local/etc/bash_completion.d/git-completion.bash"
  source "/usr/local/etc/bash_completion.d/git-prompt.sh"
  PS1='\[\033[00;32m\]\u@\h \[\033[00;33m\]\W$(__git_ps1 " (%s)") \$ \[\033[00m\]'
fi

alias ls="ls -G"

alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"
alias airport='/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport'
alias hexdump='hexdump -C -n128'

