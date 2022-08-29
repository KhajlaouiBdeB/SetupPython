#!/bin/bash

#source ../set_python_path.sh 

python --version
which python
python ./setup.py

read -rsp $'Press any key to continue...\n' -n1 key