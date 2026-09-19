#/usr/bin/zsh

#
# ~/.zshrc by 2x10
#

# - - - completion - - -
autoload -Uz compinit && compinit
zstyle ':completion:*' menu select

source ~/.zconfig
source ~/.zfunc
source ~/.zalias
source ~/.zshenv

# - - - history - - -
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE=~/.zhistory

# - - - optimizations - - -
setopt AUTO_CD
#setopt CORRECT

# - - - keybinds - - -
bindkey '^[q' toggle_tmux
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey '^H' backward-kill-word
bindkey '^[^?' backward-kill-word
autoload -U select-word-style
select-word-style bash

source ~/.zuser
