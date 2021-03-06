#!/bin/bash
bgco=`xrdb -query | grep background | tail -n 1 | awk '{print $2}'`
fgco=`xrdb -query | grep foreground | tail -n 1 | awk '{print $2}'`

if [ $(cat ~/curtheme) == "dark" ]; then
	tmux set -g status-fg "#19FF19"
else
	tmux set -g status-fg "$fgco"
fi

tmux set -g status-bg "$bgco"
tmux set -g pane-border-fg "$bgco"
tmux set -g pane-active-border-fg "$bgco"
tmux set -g pane-active-border-bg "$bgco"
