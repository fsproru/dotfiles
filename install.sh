#!/bin/sh

current_dir=$(dirname $0)
dotfiles_path=$PWD/$current_dir
vimfiles_path=$dotfiles_path/vimfiles

echo "=== Initializing git submodules"
git submodule update --init

echo "=== Installing vimfiles"
cd $vimfiles_path
./install.sh
cd -

echo "=== Creating symlinks for dotfiles"
cd $dotfiles_path
for name in symlink/*; do
  name=$(echo $name|cut -c 9-)
  target=$HOME/.$name

  if [ -e $target ]; then
    echo "WARNING: $target exists but not a symlink" && continue
  else
    ln -s $dotfiles_path/symlink/$name $HOME/.$name
  fi
done
cd -

echo "=== Creating a symlink for iTerm2"
iterm_file=com.googlecode.iterm2.plist
iterm_path=$HOME/Library/Preferences/$iterm_file

if [ -e $iterm_path ]; then
  echo "WARNING: $iterm_path exists but not a symlink" && continue
else
  ln -s $HOME/.$iterm_file $iterm_path
fi

echo === Done
