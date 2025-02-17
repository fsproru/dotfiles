#!/bin/sh

current_dir=$(dirname $0)
dotfiles_path=$PWD/$current_dir
vimfiles_path=$dotfiles_path/vimfiles
emacs_dir=$dotfiles_path/symlink/emacs.d

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

if ! type brew > /dev/null; then
  echo "=== Installing Homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "=== Installing Homebrew packages"
brew bundle

if type cask > /dev/null; then
  echo "=== Installing Cask Packages for Emacs"
  cd $emacs_dir
  cask install
  cd -
else
  echo "=== Warning: Emacs packages were not installed because cask is not installed"
fi

echo === Setting up System Preferences
defaults write com.apple.screensaver askForPasswordDelay -int 60 # ask for password after a number of seconds
defaults write com.apple.finder AppleShowAllFiles TRUE # show hidden files in Finder
defaults write com.apple.dock autohide -int 1 # auto hide the dock
defaults write com.apple.dock orientation left # change dock orientation to the left
defaults write com.apple.dock tilesize 35 # make dock icons smaller
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3 # enable full keyboard access for all controls

killall Dock # relaunch dock

echo === Done
