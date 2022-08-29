#!/bin/bash

echo 'Exported path:'

#printenv | grep --color "\bPATH\b"
printenv | grep --color "\PYTHON_PATH\b"
read -rsp $'Press any key to continue...\n' -n1 key