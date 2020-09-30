#!/bin/zsh

PROJECT=$1
HOMEDIR=$2

tmux new-session -d -c $HOMEDIR -s $PROJECT
tmux new-window -c $HOMEDIR -n vim -t 0
tmux new-window -c $HOMEDIR -n servers -t 1
tmux new-window -c $HOMEDIR -n servers -t 2
tmux new-window -c $HOMEDIR -n shell -t 3
tmux new-window -c $HOMEDIR -n logs -t 4
tmux select-window -t 0
tmux -CC attach-session -t $PROJECT
