#!/bin/zsh
for dir in ~/Github/dotfiles/*; do
  ln -sf "$dir" ~/.config/$(basename "$dir")
done
echo "Dotfiles synced!"

