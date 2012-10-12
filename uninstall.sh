#!/bin/sh

# asking for confirmation
echo "I'll delete all dotfiles from $HOME
Is that ok? (yes/no)"

while true
do
  read CONFIRM
  case $CONFIRM in
    y|Y|YES|yes|Yes) break ;;
    n|N|no|NO|No)
      echo Aborting - you entered $CONFIRM
      exit
      ;;
    *) echo Please type \"yes\" or \"no\"
  esac
done

current_dir=$(dirname $0)
dotfiles_path=$PWD/$current_dir
vimfiles_path=$dotfiles_path/vimfiles

echo "=== Uninstalling vimfiles"
cd $vimfiles_path
echo yes | ./uninstall.sh
cd -

echo "=== Deleting dotfiles from $HOME"
cd $dotfiles_path
for name in symlink/*; do
  name=$(echo $name|cut -c 9-)
  target=$HOME/.$name

  if [ -e $target ]; then
    rm $target
    echo Deleted $target
  fi
done
cd -

echo === Done
