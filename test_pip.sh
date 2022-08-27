#!/bin/bash

source ./set_python_path.sh -p

echo "Test pip cmd"
python -m pip --version 

read -rsp $'Press any key to continue...\n' -n1 key