#!/usr/bin/zsh

#
# ~/.zshrc by 2x10
#

# - - - autoloads - - -
autoload -Uz compinit && compinit
autoload -Uz select-word-style && select-word-style d

source ~/.zprompt
source ~/.zalias
source ~/.zfunc
source ~/.zshenv

# - - - plugins - - -
source ~/.zsh/plugins/fzf/shell/completion.zsh
source ~/.zsh/plugins/fzf/shell/key-bindings.zsh

source ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# - - - history - - -
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE=~/.zhistory

# - - - optimizations - - -
setopt AUTO_CD
#setopt CORRECT

setopt APPEND_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS
setopt INC_APPEND_HISTORY

# - - - settings - - -
zstyle ':completion:*' menu select
zstyle ':completion:*' verbose true
zstyle ':completion:*' list-colors 'di=34'

# - - - keybinds - - -
bindkey '^[q' toggle_tmux
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey '^H' backward-kill-word
bindkey '^[^?' backward-kill-word

source ~/.zuser
