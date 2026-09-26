#!/bin/zsh

#
# ~/.tmux/init.zsh
#

# user-based coloring scheme

if [[ "$(id -u)" == "0" ]]; then
    tmux set-option -g pane-active-border-style "fg=#AF0000"
    tmux setw -g window-status-current-style "bg=#AF0000,fg=#000000,bold"
    tmux set-option -g message-style "bg=#AF0000,fg=#000000,bold"
else
    tmux set-option -g pane-active-border-style "fg=#AF87FF"
    tmux setw -g window-status-current-style "bg=#AF87FF,fg=#000000,bold"
    tmux set-option -g message-style "bg=#AF87FF,fg=#000000,bold"
fi
