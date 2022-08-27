#!/bin/bash

echo 'Exported path:'
printenv | grep --color "\bPATH\b"
read -rsp $'Press any key to continue...\n' -n1 key