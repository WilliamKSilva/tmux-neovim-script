#!/bin/bash

session="codeenv"

## tmux session and panel creation
tmux new-session -d -s $session
tmux split-window -h -t $session
tmux split-window -v -t $session
## open vim on the first panel
tmux respawn-pane -t $session:0.0 -k "nvim ."
tmux attach -t $session
