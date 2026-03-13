#!/bin/bash

echo "Installing terminal setup..."

# Directories
mkdir -p ~/.config/alacritty
mkdir -p ~/.zsh/plugins

# Copy configs
cp zsh/.zshrc ~/.zshrc
cp zsh/.p10k.zsh ~/.p10k.zsh
cp alacritty/alacritty.toml ~/.config/alacritty/alacritty.toml
cp config/ls_colors ~/.config/ls_colors

# Copy plugins
cp -r zsh/plugins/* ~/.zsh/plugins/

echo "Installing dependencies..."

# Arch Linux example
sudo pacman -S --needed \
zsh \
alacritty \
fzf \
fd \
ripgrep \
bat \
eza \
htop

# change shell
chsh -s $(which zsh)

echo "Installation finished."
