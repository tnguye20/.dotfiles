# export TERM="xterm-256color"
source ~/antigen.zsh
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(root_indicator user dir_writable dir)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status vcs)

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
# antigen theme bhilburn/powerlevel9k powerlevel9k
antigen theme amuse

antigen apply

# bind -r '\C-s'
 stty -ixon

 function chpwd() {
  emulate -L zsh
  ls
 }

alias vc="vim ~/.vimrc"
alias vt="vim ~/.tmux.conf.local"
alias vz="vim ~/.zshrc"
alias copy="xclip -sel clip"
alias t="tmux new -s A"
alias tl="tmux ls"
alias ta="tmux attach -t A"
alias tb="tmux attach -t B"

export DOCKERBINDIP=10.1.101.223
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPS="--extended"
export COMPOSE_HTTP_TIMEOUT=5000
