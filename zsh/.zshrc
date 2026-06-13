# =====================================================
# POWERLEVEL10K THEME
# =====================================================
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Load Powerlevel10k theme
source ~/.oh-my-zsh/custom/themes/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# =====================================================
# PATHS
# =====================================================
export PATH="$HOME/.local/bin:$HOME/.cargo/bin:$PATH"

# Bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# SDKMAN
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"

# Plugins
source $HOME/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

fpath=(~/.zsh/plugins/zsh-completions/src $fpath)
autoload -Uz compinit
compinit

source ~/.zsh/fzf-tab/fzf-tab.plugin.zsh

HISTFILE=~/.zsh_history
HISTSIZE=20000
SAVEHIST=20000
setopt APPEND_HISTORY SHARE_HISTORY INC_APPEND_HISTORY  
setopt HIST_IGNORE_ALL_DUPS HIST_REDUCE_BLANKS

export LS_COLORS="$(cat ~/.config/ls_colors)"

# Files
function ls() {
  if [[ -z "$(command ls -A . 2>/dev/null)" ]]; then
    echo
    print -P "  %K{229}%F{238}  ⚠  No such file or directory  %k%f"
    echo
  else
    eza --icons=auto --group-directories-first --color=always "$@"
  fi
}
alias ll='eza -lah --icons=auto --group-directories-first --color=always'
alias la='eza -a --icons --color=always'
alias tree='eza --tree --icons'
alias lst='eza --tree -a -L 2 --icons'

# File Navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias home='cd ~'
alias desk='cd ~/Desktop'
alias docs='cd ~/Documents'
alias dl='cd ~/Downloads'
alias t='cd ~/Templates'
alias mkdirp='mkdir -pv'
alias rmf='rm -rf'
alias c='clear'
alias h='history'
alias d='cd /run/media/maszal_08/data'
alias nodeproj='cd ~/Desktop/project/development/node'
alias pyproj='cd ~/Desktop/project/development/py'
alias phpproj='cd ~/Desktop/project/development/php'
alias javaproj='cd ~/Desktop/project/development/java'
alias .zshrc='~/.zshrc'
alias mlproj='cd ~/Desktop/project/development/marchine-learning'
alias cproj='cd ~/Desktop/project/development/c'
alias javaproj='cd ~/Desktop/project/development/java'

# Search Impection
alias grep='rg'
alias findd='fd'
alias cat='bat --paging=never'
alias preview='bat --style=numbers --color=always'

# Node / Bun / Pnpm
alias ni='npm install'
alias ns="npm start"
alias nrs='npm run start'
alias nrt='npm run test'
alias nrl='npm run lint'
alias nrd='npm run dev'
alias nrb='npm run build'

alias bi='bun install'
alias bd='bun dev'
alias bb='bun build'
alias br='bun run'

alias piu='pnpm install'
alias pua='pnpm update'

# Composer 
alias ci='composer install'
alias cu='composer update'
alias cr='composer require'
alias cda='composer dump-autoload'

# PHP / Laravel
alias p='php'
alias pas='php artisan serve'
alias pam='php artisan migrate'
alias paf='php artisan migrate:fresh --seed'
alias pak='php artisan key:generate'
alias parc='php artisan route:clear'
alias pacl='php artisan cache:clear'
alias paevent='php artisan event:clear'
alias paopt='php artisan optimize:clear'
alias pamakec='php artisan make:controller'
alias pamakem='php artisan make:model'
alias pamaker='php artisan make:request'
alias pamakemig='php artisan make:migration'
alias pamakef='php artisan make:factory'
alias pamakes='php artisan make:seeder'
alias patinker='php artisan tinker'
alias pasw='php artisan storage:link'

# Python
alias venv='python -m venv .venv'
alias vact='source .venv/bin/activate'
alias vdeact='deactivate'
alias pyr='python manage.py runserver'
alias pym='python manage.py migrate'

# PHP Server
alias phps='php -S localhost:8000'

# Git
alias gs='git status -sb'
alias ga='git add .'
alias gap='git add -p'
alias gco='git checkout'
alias gcb='git checkout -b'
alias gbd='git branch -D'
alias gl='git log --oneline --graph --decorate'
alias gdiff='git diff'
alias gshow='git show'
alias gfetch='git fetch --all --prune'
alias gsave='git stash push -m'
alias gpop='git stash pop'
alias greset='git reset --hard'
alias ghead='git rev-parse --abbrev-ref HEAD'
alias gh-origin-m='f(){ git remote add origin git@github.com:Masfahri2005/$1.git }; f'
alias gh-origin-f='f(){ git remote add origin git@github.com:Masfahri2005/$1.git }; f'
alias gh-test='ssh -T git@github.com'
alias gh-push-init='git push -u origin main'

# Docker
alias dps='docker ps'
alias dpsa='docker ps -a'
alias dlogs='docker logs -f'
alias dstop='docker stop'
alias dstart='docker start'
alias dstat='docker stats'
alias dcleanall='docker system prune -a --volumes'

# System
alias ports='ss -tulpn'
alias myip='ip a'
alias disk='df -h'

# System & Network
alias cpu='lscpu'
alias mem='free -h'
alias top='htop'
alias pingg='ping google.com'
alias speed='speedtest-cli'
alias reboot='sudo reboot'
alias shutdown='sudo shutdown now'

# Database Aliases
# PostgreSQL
alias pgroot='psql -h 127.0.0.1 -U myuser -d postgres'
alias pgdb='psql -h 127.0.0.1 -U myuser'

# MongoDB
alias mongo-admin='mongosh -u admin -p --authenticationDatabase admin'
alias mongo-local='mongosh'

# MySQL
alias mysql-user='mysql -u fakhrizal -p'
alias mysql-root='mysql -u root -p'

# Tmux management aliases
alias tmux-list='tmux list-sessions'
alias tmux-kill='tmux kill-session -t'
alias tmux-new='tmux new-session -s'
alias tmux-detach='tmux detach'

# Tmux attach with fzf selection
alias tmux-attach='tmux attach-session -t $(tmux list-sessions -F "#{session_name}" | fzf)'

export FZF_DEFAULT_COMMAND='fd --hidden --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND='fd --type d'

export FZF_DEFAULT_OPTS='
--height=40%
--layout=reverse
--border
--preview "bat --style=numbers --color=always {}"
'

[ -f "$HOME/.local/bin/env" ] && source "$HOME/.local/bin/env"
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

cd() {
  builtin cd "$@" || return

  [[ "$PWD" == "/" ]] && return

  if [[ -z "$(command ls -A . 2>/dev/null)" ]]; then
    echo
    print -P "  %K{229}%F{238}  ⚠  Empty directory  %k%f"
    echo
  fi
}

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  


_before_prompt() {
    unset _p9k__params
    source ~/.p10k.zsh
}
typeset -ag precmd_functions
if (( ! ${precmd_functions[(I)_before_prompt]} )); then
    precmd_functions=(_before_prompt $precmd_functions)
fi
export PATH="$HOME/.config/composer/vendor/bin:$PATH"
export FLUTTER_SUPPRESS_ANALYTICS=true
export DART_SUPPRESS_ANALYTICS=true
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Force block cursor
_fix_cursor() { echo -ne '\e[2 q' }
precmd_functions+=(_fix_cursor)
