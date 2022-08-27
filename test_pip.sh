#!/bin/bash
#PY_PATH='./Python310'
#SCI_PATH='./Scikit'
#CM_PATH='./Cmake'

#
#export SCI_PATH
#export CM_PATH

# Check Environment
#printenv | grep PY_PATH
#printenv | grep SCI_PATH 
#printenv | grep CM_PATH

echo 'Current path:'
echo $PATH

NEW_PATH=$PATH
PYTHON_PATH='./Python310'
PIP_PATH='./Python310/Scripts'
NEW_PATH=$PYTHON_PATH:$PIP_PATH:$NEW_PATH
echo 'New path:'
echo $NEW_PATH
read -rsp $'Press any key to continue...\n' -n1 key

export PATH=$NEW_PATH
echo 'Exported path:'
printenv | grep PATH
#alias python='./Python310/python'
#alias pip='./Python310/Scripts/pip'

echo "Test pip cmd"
python -m pip --version 

read -rsp $'Press any key to continue...\n' -n1 key