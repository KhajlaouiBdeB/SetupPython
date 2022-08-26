#!/usr/bin/env python
import sys
import os
import shutil
import subprocess

print("Start install")
dir_path = './Scikit'
if os.path.exists(dir_path):
    print('remove ' + dir_path)
    # removing the file using the os.remove() method
    shutil.rmtree(dir_path)

print("Install Scikit")
sys.stdout.flush() # always flush stream before subprocess call
subprocess.check_call([sys.executable, '-m', 'pip', 'install', 'scikit-build', '--target', 'Scikit'])