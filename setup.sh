#!/bin/bash

mkdir -p "$HOME/.local/bin"
for script in v*; do
  ln -s "$(pwd)/$script" "$HOME/.local/bin/$script"
done

if ! grep -q '.local/bin' $HOME/.zshrc; then
  echo 'export PATH="$HOME/.local/bin:$PATH"' >> $HOME/.zshrc
fi
if ! grep -q '.local/bin' $HOME/.bashrc; then
  echo 'export PATH="$HOME/.local/bin:$PATH"' >> $HOME/.bashrc
fi
if ! grep -q '.local/bin' $HOME/.config/fish/config.fish; then
  mkdir -p $HOME/.config/fish
  echo "set -a fish_user_paths $HOME/.local/bin" >> $HOME/.config/fish/config.fish
fi
