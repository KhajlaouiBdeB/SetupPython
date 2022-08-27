#!/bin/bash

press_to_continue()
{
  read -rsp $'Press any key to continue...\n' -n1 key # pause hack
}

echo "Set python path's:"
PYTHON_PATH='./Python310'
PIP_PATH='./Python310/Scripts'
echo $PYTHON_PATH
echo $PIP_PATH

unset ACTION
while getopts 'p' flag; do
  case "${flag}" in
    p) ACTION=SHOW_PATH;;
    *) echo "Usage: retrieve_branch [-p]"
	   press_to_continue
       exit 1 ;;
  esac
done

NEW_PATH=$PYTHON_PATH:$PIP_PATH:$PATH
export PATH=$NEW_PATH

if [ -n "$ACTION" ]; then
  case $ACTION in
    SHOW_PATH) source ./show_path.sh ;;
  esac
else
    press_to_continue
fi
