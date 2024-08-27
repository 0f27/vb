#!/bin/bash

for script in v*; do
  rm "$HOME/.local/bin/$script"
done
