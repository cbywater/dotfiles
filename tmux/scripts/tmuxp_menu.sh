#!/usr/bin/env bash

window=$(tmux new-window -d -P -F "#{window_id}")
tmux send-keys -t $window "selection=\$(ls ~/.tmuxp | sed -e 's:\.[^./]*$::' | fzf +m) && tmuxp load \$selection -y && tmux kill-window" C-m
tmux select-window -t $window
