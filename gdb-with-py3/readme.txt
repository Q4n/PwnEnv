.
├── ctfgdb.sh  # build gdb and install gef gef-ext 
├── q4n-gefext.py # my own ext

install:
    git clone https://github.com/Q4n/PwnEnv ~
    cd ~/PwnEnv/gdb-with-py3
    sh ctfgdb.sh
    echo "source ~/PwnEnv/gdb-with-py3/q4n-gefext.py" >> ~/.gdbinit
