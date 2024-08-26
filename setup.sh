#!/bin/bash

mkdir -p "$HOME/.local/bin"
for s in v*; do
  ln -s "$(pwd)/$s" "$HOME/.local/bin/$s"
done

if ! grep -q '.local/bin' $HOME/.zshrc; then
  echo 'export PATH="$HOME/.local/bin:$PATH"' >> $HOME/.zshrc
fi
if ! grep -q '.local/bin' $HOME/.bashrc; then
  echo 'export PATH="$HOME/.local/bin:$PATH"' >> $HOME/.bashrc
fi
if ! grep -q '.local/bin' $HOME/.config/fish/config.fish; then
  echo "set -a fish_user_paths $HOME/.local/bin" >> $HOME/.config/fish/config.fish
fi
