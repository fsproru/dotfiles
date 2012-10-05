#!/bin/sh

for name in symlink/*; do
  name=$(echo $name|cut -c 9-)
  target=$HOME/.$name

  if [ -e $target ]; then
    echo "WARNING: $target exists but not a symlink" && continue
  fi

  ln -s $PWD/$name $HOME/.$name
done
