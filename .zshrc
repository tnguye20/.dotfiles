export TERM="xterm-256color"
source $HOME/antigen.zsh
# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(root_indicator user dir_writable dir)
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status vcs)

autoload -U colors && colors

POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k

# Easily switch primary foreground/background colors
#DEFAULT_FOREGROUND=006 DEFAULT_BACKGROUND=235
#DEFAULT_COLOR=$DEFAULT_FOREGROUND

## powerlevel9k prompt theme
DEFAULT_USER=$USER

POWERLEVEL9K_MODE="nerdfont-complete"
#POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
#POWERLEVEL9K_SHORTEN_STRATEGY="truncate_right"

#POWERLEVEL9K_DIR_OMIT_FIRST_CHARACTER=false

POWERLEVEL9K_ALWAYS_SHOW_CONTEXT=true
POWERLEVEL9K_ALWAYS_SHOW_USER=false

#POWERLEVEL9K_CONTEXT_TEMPLATE="\uF109 %m"

#POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="$DEFAULT_FOREGROUND"
#POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND="$DEFAULT_BACKGROUND"
#POWERLEVEL9K_CONTEXT_ROOT_FOREGROUND="$DEFAULT_FOREGROUND"
#POWERLEVEL9K_CONTEXT_ROOT_BACKGROUND="$DEFAULT_BACKGROUND"

#POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR="\uE0B4"
#POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR="%F{$(( $DEFAULT_BACKGROUND - 2 ))}|%f"
#POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR="\uE0B6"
#POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR="%F{$(( $DEFAULT_BACKGROUND - 2 ))}|%f"

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true

POWERLEVEL9K_STATUS_VERBOSE=true
POWERLEVEL9K_STATUS_CROSS=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

# POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%F{cyan}\u256D\u2500%f"
# POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{014}\u2570%F{cyan}\uF460%F{073}\uF460%F{109}\uF460%f "
# POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="╭─%f"
# POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="╰─%F{008}\uF460 %f"
# POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
# POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{008}> %f"

POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="╭"
POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX="❱ "
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="╰\uF460\uF460\uF460 "

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(root_indicator user context ssh dir_writable dir vcs)
# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon root_indicator context dir_writable dir vcs)
# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(ssh root_indicator dir_writable dir vcs )
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator os_icon background_jobs)

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
antigen theme bhilburn/powerlevel9k powerlevel9k
# antigen theme amuse
# antigen theme bira

antigen apply

# bind -r '\C-s'
 stty -ixon

 function chpwd() {
  emulate -L zsh
  ls
 }

alias cdf="cd $HOME/.dotfiles"
alias cds="cd $HOME/scripts"
alias cdn="cd $HOME/notes"
alias cdr="cd $HOME/repo"
alias vx="vim $HOME/.Xresources"
alias v3="vim $HOME/.i3/config"
alias vc="vim $HOME/.vimrc"
alias vt="vim $HOME/.tmux.conf.local"
alias vz="vim $HOME/.zshrc"
alias vg="vim $HOME/.gitconfig"
alias vp="vim $HOME/.profile"
alias vf='vim $(fzf)'
alias gvf='gvim $(fzf)'
alias copy="xclip -sel clip"
alias t="tmux new -s A"
alias tl="tmux ls"
alias ta="tmux attach -t A"
alias tb="tmux attach -t B"

alias gt="git status"
alias ga="git add $@"
alias g="git commit"
alias gcm="git commit -m $1"
alias gcam="git commit -am $1"
alias gpp="git push"
alias gcob="git checkout -b $1"
alias gco="git checkout $1"
alias gp="git pull"
alias gf="git fetch"
alias gd="git difftool -y"
alias gl="git log --oneline $@"

# Vim key on shell
bindkey -v
export KEYTIMEOUT=40
bindkey 'jk' vi-cmd-mode
# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

export DOCKERBINDIP=10.1.101.223
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh
export FZF_DEFAULT_COMMAND='find .'
export FZF_DEFAULT_OPS="--extended"
export COMPOSE_HTTP_TIMEOUT=5000
export RANGER_LOAD_DEFAULT_RC=false
export FPP_EDITOR="vim -p"
# set -o vi
export PATH=$PATH:$HOME/scripts
# neofetch --w3m $HOME/.dotfiles/.wallpaper/mr_robot.jpg --size 350px

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
