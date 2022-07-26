#!/usr/bin/env bash
SELECTED_FOLDER=$(ls ~/repos | fzf --prompt="Folder: " -q "$1" --reverse)

if [[ SELECTED_FOLDER ]]; then
  echo "$SELECTED_FOLDER"
  tmux new-session -d -s "$SELECTED_FOLDER"
  tmux send-keys "cd ~/repos/$SELECTED_FOLDER" C-m

    # If inside tmux then select session to switch, otherwise just attach
    if [ -n "$TMUX" ]; then
        SESSION=$(tmux list-sessions -F "#S" | fzf --prompt="Session: ")
        if [ -n "$SESSION" ]; then
            tmux switch-client -t "$SESSION"
        fi
    else
        tmux attach-session
    fi

fi
