# import os module
import os

def SetPythonEnvironment():
    PYTHON_PATH=os.path.abspath('../Python310')
    os.environ["PATH"] += os.pathsep + PYTHON_PATH
    PIP_PATH=os.path.abspath('../Python310/Scripts')
    os.environ["PATH"] += os.pathsep + PIP_PATH

def ShowEnvironment():
    # store environment dictionary
    environment = os.environ
    
    print("Environment variables are:")
    for key in environment.keys() :
        if key=="PATH":
            print(key)
            print(environment[key])
        
def CurrentPath():
    directory_path = os.getcwd()
    print("My current directory is : " + directory_path)

#SetPythonEnvironment()
#ShowEnvironment()
CurrentPath()
from skbuild import setup

setup(
    name="hello",
    version="1.2.3",
    packages=['hello']
)