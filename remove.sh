#!/bin/bash

mkdir -p "$HOME/.local/bin"
for script in v*; do
  rm "$HOME/.local/bin/$script"
done
