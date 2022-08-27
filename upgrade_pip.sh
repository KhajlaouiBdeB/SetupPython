#!/bin/bash
alias python='./Python310/python'
alias pip='./Python310/Scripts/pip'

echo "Upgrade pip cmd"
echo "---------------"

python -m pip install --upgrade pip

read -rsp $'Press any key to continue...\n' -n1 key