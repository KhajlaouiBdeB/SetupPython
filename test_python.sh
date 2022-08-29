#!/bin/bash

source ./set_python_path.sh -p

echo "Test pip cmd"

python --version 
pip --version
#python -m pip list 
python -m pip show scikit-build

read -rsp $'Press any key to continue...\n' -n1 key