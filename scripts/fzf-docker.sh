#!/usr/bin/env bash

dp_commands=`echo "build up down" | tr ' ' '\n'`

selected=$(printf "$dp_commands" | fzf --prompt="docker-compose " -m -1 --reverse --height 50%)

docker-compose "$selected"
