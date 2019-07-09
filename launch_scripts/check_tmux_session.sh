#!/bin/bash

SESSION_NAME="$1"

LINES="$(tput lines)"
COLS="$(tput cols)"

tmux has -t "$SESSION_NAME" &> /dev/null

if [ $? -ne 0 ]
then
	OUT="Session not yet initialized"
else
	OUT="Session exists"
fi

display_centre(){
	TEXT=$1
	TEXT_LENGTH=$(echo $TEXT | wc -m)
	WIDTH=$(( ($TEXT_LENGTH + $COLS) / 2 ))

	yes "" | head -n "$(( ($LINES / 2) - 1 ))"

	printf "%*s\n" $WIDTH "$TEXT"

}

display_centre "$OUT"

