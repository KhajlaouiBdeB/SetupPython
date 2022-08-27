#!/usr/bin/env python
import sys
import os
import shutil
import subprocess

print("Start install")
package = 'scikit-build'
dir_path = './Scikit'
if os.path.exists(dir_path):
    print('remove ' + dir_path)
    shutil.rmtree(dir_path)

print('Install ' + package)
sys.stdout.flush() # always flush stream before subprocess call
subprocess.check_call([sys.executable, '-m', 'pip', 'install', package])