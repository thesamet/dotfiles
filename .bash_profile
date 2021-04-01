if [ -n "$BASH_VERSION" ]; then
    # include .bash_profile.local if it exists
    if [ -f "$HOME/.bash_profile.local" ]; then
        . "$HOME/.bash_profile.local"
    fi

    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

export WORKON_HOME=~/.virtualenvs
. /usr/local/bin/virtualenvwrapper.sh
export PATH=./node_modules/.bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/share/scala/bin:/Users/nadavsamet/Development/packer
eval "$(rbenv init -)"
if [ -f /usr/local/etc/bash_completion ]; then
  . /usr/local/etc/bash_completion
fi

[ -s "/home/thesamet/.jabba/jabba.sh" ] && source "/home/thesamet/.jabba/jabba.sh"

export PATH="$HOME/.cargo/bin:$PATH"
if [ -e /home/thesamet/.nix-profile/etc/profile.d/nix.sh ]; then . /home/thesamet/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
