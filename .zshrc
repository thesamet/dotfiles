# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(
  fasd
  git 
  bower 
  colored-man
  history-substring-search 
  java
  jira
  scala
  web-search
  aws
  virtualenvwrapper
  )

source $ZSH/oh-my-zsh.sh

# User configuration

export SCALA_HOME=/usr/local/share/scala
export PATH=$PATH:$SCALA_HOME/bin:$HOME/Development/packer

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
export EDITOR=vim

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"
#
function time_sec() {
  python2.7 -c "import datetime; print datetime.datetime.fromtimestamp($1).strftime('%d %b %Y %T')"
}
function time_msec() {
  python2.7 -c "import datetime; print datetime.datetime.fromtimestamp($1/1000).strftime('%d %b %Y %T')"
}
function time_usec() {
  python2.7 -c "import datetime; print datetime.datetime.fromtimestamp($1/1000000).strftime('%d %b %Y %T')"
}
function epoch_time() {
  python2.7 -c "import time; print time.mktime(time.strptime('$1', '%Y/%m/%d-%H:%M:%S'))"
}

alias grb="git fetch && git rebase origin/master"
alias grbi="git fetch && git rebase -i origin/master"
alias gsubmit="git push origin HEAD:refs/heads/master"

function grev() {
  git push origin HEAD:refs/for/master%r=$1
}

# Seriously?
export ANSIBLE_NOCOWS=1

if [[ $OSTYPE =~ "linux" ]]; then
export BROWSER=/usr/bin/google-chrome-stable
fi

if [[ $OSTYPE =~ "darwin" ]]; then
export BROWSER=/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome
fi

# added by travis gem
[ -f /home/thesamet/.travis/travis.sh ] && source /home/thesamet/.travis/travis.sh

export NVM_DIR="$HOME/.nvm"

[ -f /usr/local/opt/nvm.sh ] && source "/usr/local/opt/nvm/nvm.sh"

[ -f ~/.iterm2_shell_integration.zsh ] && source "~/.iterm2_shell_integration.zsh"

