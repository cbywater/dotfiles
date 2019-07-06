#!/usr/bin/env bash

window=$(tmux new-window -d -P -F "#{window_id}")
tmux send-keys -t $window \
    "selection=\$( \
        ls ~/dotfiles/launch_scripts | fzf +m --preview='~/dotfiles/launch_scripts/{}/preview.sh' \
    ) \
    && ~/dotfiles/launch_scripts/\$selection/launch.sh \
    && tmux kill-window" \
    C-m

tmux select-window -t $window
