#!/usr/bin/env bash

window=$(tmux new-window -d -P -F "#{window_id}")
tmux send-keys -t $window \
    "selection=\$( \
        ls ~/.launch_scripts | grep -v '.sh$' | fzf +m --preview='~/.launch_scripts/{}/preview.sh' \
    ) \
    && ~/.launch_scripts/\$selection/launch.sh \
    && tmux kill-window" \
    C-m

tmux select-window -t $window
