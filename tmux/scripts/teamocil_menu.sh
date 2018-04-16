#!/usr/bin/env bash

window=$(tmux new-window -d -P -F "#{window_id}")
tmux send-keys -t $window "selection=\$(teamocil --list | fzf +m) && teamocil \$selection --here" C-m
sleep 0.1
tmux select-window -t $window

# && tmux switch-client -T FZF && tmux switch-client -T root
