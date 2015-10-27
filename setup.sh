#!/bin/bash
# Creates symbolic links to config files.
# Deletes files in home directory.

cd $(dirname $0)

CONFIG_FILES=$(pwd)

function prepare_symlink() {
  rm -rf "$HOME/$1"
  if [ -f "$HOME/$2" ];
    then rm -rf "$HOME/$2";
  fi
  if [ -L "$HOME/$2" ];
    then rm "$HOME/$2";
  fi
  ln -s "$CONFIG_FILES/$1" $HOME/"$2"
}

prepare_symlink .ackrc
prepare_symlink .bash_profile
prepare_symlink .bashrc
prepare_symlink .gitconfig
prepare_symlink .inputrc
prepare_symlink .screenrc
prepare_symlink .tmux.conf
prepare_symlink .vim
prepare_symlink .vimrc

mkdir -p $HOME/bin

if [[ $OSTYPE =~ "darwin" ]]; then
fi

if [[ $OSTYPE =~ "linux" ]]; then
  prepare_symlink .Xkbmap
  prepare_symlink .Xresources
fi

echo -e '\033[1;33mYou are all set.\033[1;31m :)\033[0m'
