#!/bin/bash

TARGET=$(tmux new-window -n:api)
tmux select-window -t $TARGET
tmux split-window -v -p 20
