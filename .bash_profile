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
