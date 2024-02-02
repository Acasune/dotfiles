#!/bin/bash
set -ue

command echo "Backup old dotfiles..."
if [ ! -d "$HOME/.dotbackup" ];then
  command echo "$HOME/.dotbackup not found. Auto Make it"
  command mkdir "$HOME/.dotbackup"
fi

dotdir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)"
#local dotdir=$(dirname ${script_dir})
if [[ "$HOME" != "$dotdir" ]];then
  for f in $dotdir/.??*; do
    [[ `basename $f` == ".git" || `basename $f` == ".github"  ]] && continue
    if [[ -L "$HOME/`basename $f`" ]];then
      command rm -f "$HOME/`basename $f`"
    fi
    if [[ -e "$HOME/`basename $f`" ]];then
      command mv "$HOME/`basename $f`" "$HOME/.dotbackup"
    fi
    command ln -snf $f $HOME
  done
else
  command echo "same install src dest"
fi

git config --global include.path "~/.gitconfig_shared"
command echo -e "\e[1;36m Install completed!!!! \e[m"
