#!/bin/bash

mkdir -p "$HOME/.local/bin"
for s in vb*; do
  ln -s "$(pwd)/$s" "$HOME/.local/bin/$s"
done
