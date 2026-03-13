Linux Terminal Setup

Modern Linux terminal configuration using Alacritty + Zsh + Powerlevel10k with fast plugins and developer-friendly aliases.

This repository contains my personal terminal configuration (dotfiles) designed for a fast, minimal, and productive development environment.

Features

⚡ Fast terminal using Alacritty

🐚 Powerful shell using Zsh

🎨 Beautiful prompt using Powerlevel10k

🧠 Command suggestions with autosuggestions

🎯 Syntax highlighting for commands

🔍 Fast file search using fzf, fd, and ripgrep

🧰 Developer aliases for:

Git

Docker

Laravel

Node / Bun / PNPM

Python

Database tools

Tools Used
Terminal Emulator

Alacritty

Alacritty is a GPU accelerated terminal emulator written in Rust.
It is extremely fast and minimal compared to traditional terminals.

Official repository:
https://github.com/alacritty/alacritty

Documentation:
https://alacritty.org

Shell

Zsh

Zsh (Z Shell) is an extended version of Bash with powerful features such as:

better tab completion

improved scripting

plugin ecosystem

powerful customization

Official site:
https://www.zsh.org/

Documentation:
https://zsh.sourceforge.io/Doc/

Prompt Theme

Powerlevel10k

Powerlevel10k is a fast and highly customizable prompt theme for Zsh.

Features:

extremely fast prompt rendering

Git status integration

configurable icons

async prompt rendering

Official repository:
https://github.com/romkatv/powerlevel10k

Dependencies

This setup uses several modern CLI tools:

Tool Description
eza modern replacement for ls
bat cat with syntax highlighting
fd faster find
ripgrep fast text search
fzf fuzzy finder
htop system monitoring
Installation Guide

Below are the steps required to install the terminal environment manually.

1. Install Zsh
   Arch Linux
   sudo pacman -S zsh
   Ubuntu / Debian
   sudo apt install zsh
   Fedora
   sudo dnf install zsh

Check installation:

zsh --version

Set Zsh as default shell:

chsh -s $(which zsh)

Logout and login again.

Reference:
https://wiki.archlinux.org/title/Zsh

2. Install Alacritty
   Arch Linux
   sudo pacman -S alacritty
   Ubuntu
   sudo apt install alacritty
   Fedora
   sudo dnf install alacritty

Check installation:

alacritty --version

Reference:
https://github.com/alacritty/alacritty/blob/master/INSTALL.md

3. Install Powerlevel10k

Clone the theme repository:

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git \
${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

Then enable it inside .zshrc:

source ~/.oh-my-zsh/custom/themes/powerlevel10k/powerlevel10k.zsh-theme

Run configuration wizard:

p10k configure

This will generate:

~/.p10k.zsh

Reference:
https://github.com/romkatv/powerlevel10k#installation

4. Install Required CLI Tools
   Arch Linux
   sudo pacman -S \
   fzf \
   fd \
   ripgrep \
   bat \
   eza \
   htop
   Ubuntu
   sudo apt install \
   fzf \
   fd-find \
   ripgrep \
   bat \
   eza \
   htop

Reference:
https://github.com/sharkdp/fd
https://github.com/BurntSushi/ripgrep
https://github.com/junegunn/fzf

5. Clone This Repository

Clone the configuration repository:

git clone https://github.com/ZalStack/linux-terminal-setup.git

Enter the directory:

cd linux-terminal-setup

Run the installer:

chmod +x install.sh
./install.sh 6. File Structure
linux-terminal-setup
│
├── README.md
├── install.sh
│
├── zsh
│ ├── .zshrc
│ ├── .p10k.zsh
│ └── plugins
│
├── alacritty
│ └── alacritty.toml
│
└── config
└── ls_colors 7. Screenshots

Example terminal appearance:

user@machine ~/project main
❯ git status 8. References

Official documentation:

Zsh
https://www.zsh.org/

Alacritty
https://alacritty.org

Powerlevel10k
https://github.com/romkatv/powerlevel10k

Arch Wiki Zsh Guide
https://wiki.archlinux.org/title/Zsh

License

MIT License
