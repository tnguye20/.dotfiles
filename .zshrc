export TERM="xterm-256color"
source $HOME/antigen.zsh

autoload -U colors && colors
autoload -U edit-command-line
zle -N edit-command-line

#POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k

## Easily switch primary foreground/background colors
#DEFAULT_FOREGROUND=006
#DEFAULT_BACKGROUND=235
#DEFAULT_COLOR=$DEFAULT_FOREGROUND

### powerlevel9k prompt theme
#DEFAULT_USER=$USER

#POWERLEVEL9K_MODE="nerdfont-complete"
## POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
## POWERLEVEL9K_SHORTEN_STRATEGY="truncate_right"

#POWERLEVEL9K_DIR_OMIT_FIRST_CHARACTER=false

#POWERLEVEL9K_ALWAYS_SHOW_CONTEXT=true
#POWERLEVEL9K_ALWAYS_SHOW_USER=false

#POWERLEVEL9K_PROMPT_ON_NEWLINE=true
#POWERLEVEL9K_RPROMPT_ON_NEWLINE=true

#POWERLEVEL9K_STATUS_VERBOSE=true
#POWERLEVEL9K_STATUS_CROSS=true
#POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

#POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="╭"
#POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX="❱ "
#POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="╰\uF460\uF460\uF460 "

#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(root_indicator user context ssh dir_writable dir vcs)
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(virtualenv status root_indicator os_icon background_jobs)

#POWERLEVEL9K_VCS_CLEAN_BACKGROUND="green"
#POWERLEVEL9K_VCS_CLEAN_FOREGROUND="$DEFAULT_BACKGROUND"
#POWERLEVEL9K_VCS_MODIFIED_BACKGROUND="yellow"
#POWERLEVEL9K_VCS_MODIFIED_FOREGROUND="$DEFAULT_BACKGROUND"
#POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND="magenta"
#POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND="$DEFAULT_BACKGROUND"

#POWERLEVEL9K_DIR_HOME_BACKGROUND="$DEFAULT_FOREGROUND"
#POWERLEVEL9K_DIR_HOME_FOREGROUND="$DEFAULT_BACKGROUND"
#POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="$DEFAULT_FOREGROUND"
#POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="$DEFAULT_BACKGROUND"
#POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="$DEFAULT_FOREGROUND"
#POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="$DEFAULT_BACKGROUND"
#POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND="$DEFAULT_FOREGROUND"
#POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND="$DEFAULT_BACKGROUND"

#POWERLEVEL9K_STATUS_OK_FOREGROUND="$DEFAULT_FOREGROUND"
#POWERLEVEL9K_STATUS_OK_FOREGROUND="green"
#POWERLEVEL9K_STATUS_OK_BACKGROUND="$DEFAULT_BACKGROUND"
#POWERLEVEL9K_STATUS_OK_BACKGROUND="$(( $DEFAULT_BACKGROUND + 2 ))"

#POWERLEVEL9K_STATUS_ERROR_FOREGROUND="$DEFAULT_FOREGROUND"
#POWERLEVEL9K_STATUS_ERROR_FOREGROUND="red"
#POWERLEVEL9K_STATUS_ERROR_BACKGROUND="$DEFAULT_BACKGROUND"
#POWERLEVEL9K_STATUS_ERROR_BACKGROUND="$(( $DEFAULT_BACKGROUND + 2 ))"

#POWERLEVEL9K_HISTORY_FOREGROUND="$DEFAULT_FOREGROUND"

#POWERLEVEL9K_TIME_FORMAT="%D{%T \uF017}" #  15:29:33
#POWERLEVEL9K_TIME_FOREGROUND="$DEFAULT_FOREGROUND"
#POWERLEVEL9K_TIME_BACKGROUND="$DEFAULT_BACKGROUND"

#POWERLEVEL9K_VCS_GIT_GITHUB_ICON=""
#POWERLEVEL9K_VCS_GIT_BITBUCKET_ICON=""
#POWERLEVEL9K_VCS_GIT_GITLAB_ICON=""
#POWERLEVEL9K_VCS_GIT_ICON=""

#POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND="$DEFAULT_BACKGROUND"
#POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND="$DEFAULT_FOREGROUND"
#POWERLEVEL9K_EXECUTION_TIME_ICON="\u23F1"

##POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=0
##POWERLEVEL9K_COMMAND_EXECUTION_TIME_PRECISION=0

#POWERLEVEL9K_BACKGROUND_JOBS_FOREGROUND="$DEFAULT_BACKGROUND"
#POWERLEVEL9K_BACKGROUND_JOBS_BACKGROUND="$DEFAULT_FOREGROUND"

#POWERLEVEL9K_USER_ICON="\uF415" # 
#POWERLEVEL9K_USER_DEFAULT_FOREGROUND="$DEFAULT_FOREGROUND"
#POWERLEVEL9K_USER_DEFAULT_BACKGROUND="$DEFAULT_BACKGROUND"
#POWERLEVEL9K_USER_ROOT_FOREGROUND="$DEFAULT_FOREGROUND"
#POWERLEVEL9K_USER_ROOT_BACKGROUND="$DEFAULT_BACKGROUND"

#POWERLEVEL9K_ROOT_INDICATOR_FOREGROUND="$DEFAULT_FOREGROUND"
#POWERLEVEL9K_ROOT_INDICATOR_FOREGROUND="magenta"
#POWERLEVEL9K_ROOT_INDICATOR_BACKGROUND="$DEFAULT_BACKGROUND"
#POWERLEVEL9K_ROOT_INDICATOR_BACKGROUND="$(( $DEFAULT_BACKGROUND + 2 ))"
#POWERLEVEL9K_ROOT_INDICATOR_BACKGROUND="$(( $DEFAULT_BACKGROUND - 2 ))"
##POWERLEVEL9K_ROOT_ICON=$'\uFF03' # ＃
#POWERLEVEL9K_ROOT_ICON=$'\uF198'  # 

#POWERLEVEL9K_SSH_FOREGROUND="$DEFAULT_FOREGROUND"
#POWERLEVEL9K_SSH_FOREGROUND="yellow"
#POWERLEVEL9K_SSH_BACKGROUND="$DEFAULT_BACKGROUND"
#POWERLEVEL9K_SSH_BACKGROUND="$(( $DEFAULT_BACKGROUND + 2 ))"
#POWERLEVEL9K_SSH_BACKGROUND="$(( $DEFAULT_BACKGROUND - 2 ))"
#POWERLEVEL9K_SSH_ICON="\uF489"  # 

#POWERLEVEL9K_HOST_LOCAL_FOREGROUND="$DEFAULT_FOREGROUND"
#POWERLEVEL9K_HOST_LOCAL_BACKGROUND="$DEFAULT_BACKGROUND"
#POWERLEVEL9K_HOST_REMOTE_FOREGROUND="$DEFAULT_FOREGROUND"
#POWERLEVEL9K_HOST_REMOTE_BACKGROUND="$DEFAULT_BACKGROUND"

#POWERLEVEL9K_HOST_ICON_FOREGROUND="$DEFAULT_FOREGROUND"
#POWERLEVEL9K_HOST_ICON_BACKGROUND="$DEFAULT_BACKGROUND"
#POWERLEVEL9K_HOST_ICON="\uF109" # 

#POWERLEVEL9K_OS_ICON_FOREGROUND="$DEFAULT_FOREGROUND"
#POWERLEVEL9K_OS_ICON_BACKGROUND="$DEFAULT_BACKGROUND"

#POWERLEVEL9K_LOAD_CRITICAL_BACKGROUND="$DEFAULT_BACKGROUND"
#POWERLEVEL9K_LOAD_WARNING_BACKGROUND="$DEFAULT_BACKGROUND"
#POWERLEVEL9K_LOAD_NORMAL_BACKGROUND="$DEFAULT_BACKGROUND"
#POWERLEVEL9K_LOAD_CRITICAL_FOREGROUND="red"
#POWERLEVEL9K_LOAD_WARNING_FOREGROUND="yellow"
#POWERLEVEL9K_LOAD_NORMAL_FOREGROUND="green"
#POWERLEVEL9K_LOAD_CRITICAL_VISUAL_IDENTIFIER_COLOR="red"
#POWERLEVEL9K_LOAD_WARNING_VISUAL_IDENTIFIER_COLOR="yellow"
#POWERLEVEL9K_LOAD_NORMAL_VISUAL_IDENTIFIER_COLOR="green"

#POWERLEVEL9K_BATTERY_LEVEL_BACKGROUND_COLOR="$DEFAULT_BACKGROUND"
#POWERLEVEL9K_BATTERY_CHARGING_BACKGROUND="$DEFAULT_BACKGROUND"
#POWERLEVEL9K_BATTERY_CHARGED_BACKGROUND="$DEFAULT_BACKGROUND"
#POWERLEVEL9K_BATTERY_DISCONNECTED_BACKGROUND="$DEFAULT_BACKGROUND"

# Load the oh-my-zsh's library.
antigen use oh-my-zsh
antigen bundle git
antigen bundle chrissicool/zsh-256color
antigen bundle mafredri/zsh-async
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-history-substring-search
# antigen bundle jump
antigen bundle ssh-agent

# Theme
# antigen theme afowler
# antigen theme af-magic
# antigen theme bhilburn/powerlevel9k powerlevel9k
# antigen theme amuse
# antigen theme bira

antigen apply

stty -ixon

function chpwd() {
 emulate -L zsh
 ls
}

function acp() {
  msg=$1
  git add . && git commit -m $msg && git push
}

function goRepo() {
  if pacman -Qi fzf &> /dev/null; then
    repo=$(ls $HOME/repo | fzf)
    cd "$HOME/repo/$repo"
  else
    cd "$HOME/repo/"
  fi
}

alias cdf="cd $HOME/.dotfiles"
alias cds="cd $HOME/scripts"
alias cdn="cd $HOME/notes"
alias cdr="goRepo"
alias cdp="cd $HOME/packages"
alias cdm="cd /media"
alias cdrs="cd $HOME/rsync"
alias cdt="cd /tmp"
alias b="bat"
alias v="nvim"
alias vx="nvim $HOME/.Xresources"
alias v3="nvim $HOME/.i3/config"
alias vc="nvim $HOME/.vimrc"
alias vt="nvim $HOME/.tmux.conf.local"
alias vz="nvim $HOME/.zshrc"
alias vg="nvim $HOME/.gitconfig"
alias vp="nvim $HOME/.profile"
alias vf='nvim $( fzf --preview "bat --style=numbers --color=always {} | head -500"  )'
alias gvf='nvim $( fzf --preview "bat --style=numbers --color=always {} | head -500"  )'
alias copy="xclip -sel clip"
alias tmux="tmux -2"
alias t="tmux new -s A"
alias tl="tmux ls"
alias ta="tmux attach -t A"
alias tb="tmux attach -t B"
alias suv="sudo nvim -u $HOME/.vimrc $@"
alias dusk="du -sk *| sort -rn"
# alias feh="swallow feh"

alias gt="git status"
alias ga="git add $@"
alias g="git commit"
alias gcm="git commit -m $1"
alias gcam="git commit -am $1"
alias gpp="git push"
alias gcob="git checkout -b $1"
alias gco="git checkout $1"
alias gp="git pull --rebase"
alias gf="git fetch"
alias gd="git difftool -y"
alias gds="git difftool --staged -y"
alias gl="git log --oneline $@"
alias acp=acp $1

alias at="alacritty-themes"

# Vim key on shell
export KEYTIMEOUT=40
bindkey -v
bindkey 'jk' vi-cmd-mode
bindkey -M vicmd V edit-command-line
# set -o vi
# bind '"jk":vi-movement-mode'
# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh
export FZF_DEFAULT_COMMAND='find . -not -path "*.git/*" -not -path "*venv*"  -not -path "*node_modules*" -not -path "*dist*" -not -path "*build*" -type f'
export FZF_DEFAULT_OPS="--extended"
export COMPOSE_HTTP_TIMEOUT=5000
export RANGER_LOAD_DEFAULT_RC=false
export FPP_EDITOR="nvim -p"
export PATH=$PATH:$HOME/scripts
export PATH=$PATH:$HOME/scripts/yabai
export PATH=$PATH:$HOME/packages/flutter/bin
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/home/tnguye20/anaconda3/bin
export FIRESTORE_EMULATOR_HOST="localhost:8080"
export FIREBASE_STORAGE_EMULATOR_HOST="localhost:9199"
export FIREBASE_AUTH_EMULATOR_HOST="localhost:9099"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

## FZF THEME
## This file has been generated by regen.py
## Changes may be overwritten the next time
## configs are re-generated

# Colors
# black
foreground='#d4d4d5'
background='#101317'

base00='#171C21'
base08='#949494'

# red
base01='#f87070'
base09='#f87070'

# green
base02='#79dcaa'
base10='#36c692'

# yellow
base03='#ffe59e'
base11='#ffe59e'

# blue
base04='#7ab0df'
base12='#7ab0df'

# magenta
base05='#c397d8'
base13='#b77ee0'

# cyan
base06='#70c0ba'
base14='#54ced6'

# white
base07='#d4d4d5'
base15='#ffffff'

export FZF_DEFAULT_OPTS="
  --color fg:$base07
  --color fg+:$base00
  --color bg:$background
  --color bg+:$base09
  --color hl:$base10
  --color hl+:$base05
  --color info:$base02
  --color prompt:$base01
  --color spinner:$base12
  --color pointer:$base07
  --color marker:$base03
  --color border:$background
  --color gutter:$base00
  --color info:$base05
  --color header:$base08
  --prompt '  '
  --pointer ' λ'
  --layout=reverse
  --border horizontal
  --height 40"

# Increase speed when holding down keys
xset r rate 300 50 > /dev/null 2> /dev/null

# Rust ENV
[[ -d $HOME/.cargo ]] && source "$HOME/.cargo/env"

# Boot into starship
eval "$(starship init zsh)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('$HOME/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$HOME/anaconda3/etc/profile.d/conda.sh" ]; then
        . "$HOME/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="$HOME/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

if [ -d ~/.ixis/ ]; then
  source ~/.ixis/.zshrc
fi

echo "\n"
nerdfetch
echo "\n"


# Added by Amplify CLI binary installer
export PATH="$HOME/.amplify/bin:$PATH"

# Turso
export PATH="/home/tnguye20/.turso:$PATH"
