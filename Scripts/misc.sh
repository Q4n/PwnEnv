# sudo apt-get install open-vm-tools-desktop fuse
sudo apt-get install net-tools libc-dbg python2.7 python-pip python-dev git libssl-dev libffi-dev build-essential ruby curl zsh lib32z1 gcc-multilib --fix-missing -y

mkdir ~/.pip
echo "[global]" >> ~/.pip/pip.conf
echo "index-url = https://pypi.tuna.tsinghua.edu.cn/simple" >> ~/.pip/pip.conf
pip install --user q4n z3-solver 
source ~/.bashrc
sudo gem install one_gadget

sudo apt-get install ipython ipython3 -y --fix-missing

