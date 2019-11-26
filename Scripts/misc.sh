# sudo apt-get install open-vm-tools-desktop fuse
sudo apt-get install vim net-tools python2.7 python-pip python-dev git libssl-dev libffi-dev build-essential ruby curl zsh lib32z1 gcc-multilib --fix-missing -y

mkdir ~/.pip
echo "[global]" >> ~/.pip/pip.conf
echo "index-url = https://pypi.tuna.tsinghua.edu.cn/simple" >> ~/.pip/pip.conf
pip install --user q4n z3-solver 
source ~/.bashrc
sudo gem install one_gadget

sudo apt-get install ipython ipython3 -y --fix-missing

sudo dpkg --add-architecture i386
sudo apt install -y libc6:i386 libc6-dbg:i386 libc6-dbg lib32stdc++6 cmake iputils-ping python3-dev ruby-dev tmux strace ltrace nasm radare2 gdb gdb-multiarch  netcat socat patchelf file python3-distutils bison --fix-missing
