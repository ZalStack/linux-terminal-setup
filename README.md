# 🚀 Linux Terminal Setup

Modern Linux terminal configuration using **Alacritty + Zsh + Powerlevel10k**.

This repository contains my personal **terminal dotfiles** designed for a **fast, minimal, and productive development environment**.

---

![Linux](https://img.shields.io/badge/Linux-Terminal-blue)
![Shell](https://img.shields.io/badge/Shell-Zsh-green)
![Theme](https://img.shields.io/badge/Theme-Powerlevel10k-orange)
![License](https://img.shields.io/badge/License-MIT-yellow)

---

# ✨ Features

* ⚡ **GPU accelerated terminal** using Alacritty
* 🐚 **Powerful shell** with Zsh
* 🎨 **Beautiful prompt** powered by Powerlevel10k
* 🧠 **Command autosuggestions**
* 🎯 **Syntax highlighting for commands**
* 🔍 **Fast searching** using `fzf`, `fd`, and `ripgrep`
* 🧰 Developer aliases for:

  * Git
  * Docker
  * Laravel
  * Node / Bun / PNPM
  * Python
  * Database tools

---

# 📦 Tools Used

## 🖥 Terminal Emulator

### Alacritty

Alacritty is a **GPU accelerated terminal emulator written in Rust**.

Advantages:

* Extremely fast
* GPU rendering
* Minimal configuration
* Cross-platform

Official repository:

https://github.com/alacritty/alacritty

Documentation:

https://alacritty.org

---

## 🐚 Shell

### Zsh

Zsh (Z Shell) is a powerful Unix shell that extends Bash.

Features:

* Advanced tab completion
* Plugin ecosystem
* Powerful scripting
* Highly customizable

Official site:

https://www.zsh.org/

Documentation:

https://zsh.sourceforge.io/Doc/

---

## 🎨 Prompt Theme

### Powerlevel10k

Powerlevel10k is a **fast and highly customizable prompt theme for Zsh**.

Features:

* Extremely fast prompt rendering
* Git status integration
* Icon support (Nerd Fonts)
* Asynchronous prompt updates

Official repository:

https://github.com/romkatv/powerlevel10k

---

# 📚 Dependencies

This setup uses several modern CLI tools.

| Tool      | Description                    |
| --------- | ------------------------------ |
| `eza`     | Modern replacement for `ls`    |
| `bat`     | `cat` with syntax highlighting |
| `fd`      | Faster alternative to `find`   |
| `ripgrep` | High performance text search   |
| `fzf`     | Fuzzy finder                   |
| `htop`    | System monitor                 |

---

# ⚙️ Installation Guide

Follow these steps to install the terminal environment.

---

# 1️⃣ Install Zsh

### Arch Linux

```bash
sudo pacman -S zsh
```

### Ubuntu / Debian

```bash
sudo apt install zsh
```

### Fedora

```bash
sudo dnf install zsh
```

Check installation:

```bash
zsh --version
```

Set Zsh as default shell:

```bash
chsh -s $(which zsh)
```

Logout and login again.

Reference:
https://wiki.archlinux.org/title/Zsh

---

# 2️⃣ Install Alacritty

### Arch Linux

```bash
sudo pacman -S alacritty
```

### Ubuntu

```bash
sudo apt install alacritty
```

### Fedora

```bash
sudo dnf install alacritty
```

Check installation:

```bash
alacritty --version
```

Reference:
https://github.com/alacritty/alacritty/blob/master/INSTALL.md

---

# 3️⃣ Install Powerlevel10k

Clone repository:

```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git \
${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

Enable in `.zshrc`:

```bash
source ~/.oh-my-zsh/custom/themes/powerlevel10k/powerlevel10k.zsh-theme
```

Run configuration wizard:

```bash
p10k configure
```

This will generate:

```
~/.p10k.zsh
```

Reference:
https://github.com/romkatv/powerlevel10k

---

# 4️⃣ Install Required CLI Tools

### Arch Linux

```bash
sudo pacman -S \
fzf \
fd \
ripgrep \
bat \
eza \
htop
```

### Ubuntu

```bash
sudo apt install \
fzf \
fd-find \
ripgrep \
bat \
eza \
htop
```

---

# 📥 Clone This Repository

```bash
git clone https://github.com/ZalStack/linux-terminal-setup.git
```

Enter directory:

```bash
cd linux-terminal-setup
```

Run installer:

```bash
chmod +x install.sh
./install.sh
```

---

# 📁 Project Structure

```
linux-terminal-setup
│
├── README.md
├── install.sh
│
├── alacritty
│   └── alacritty.toml
│
├── config
│   └── ls_colors
│
└── zsh
    ├── .zshrc
    ├── .p10k.zsh
    └── plugins
```

---

# 🖥 Example Terminal

```
user@machine ~/project main
❯ git status
```

---

# 📖 References

* https://www.zsh.org/
* https://alacritty.org
* https://github.com/romkatv/powerlevel10k
* https://wiki.archlinux.org/title/Zsh

---

# 📄 License

MIT License
