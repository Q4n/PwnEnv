sudo apt install python3 git wget tar make gcc g++
# install gdb
wget http://ftp.gnu.org/gnu/gdb/gdb-10.1.tar.xz -O ~/gdb-10.1.tar.xz
tar -Jxvf ~/gdb-10.1.tar.xz
cd ~/gdb-10.1
mkdir build && cd build

../configure \
    --enable-targets=all \
    --enable-languages=all \
    --enable-multilib \
    --enable-interwork \
    --with-python=/usr/bin/python3

make
sudo make install

# install gef
git clone https://github.com/hugsy/gef $HOME/gef
test -f "$HOME/.gdbinit" && mv "$HOME/.gdbinit" "$HOME/.gdbinit.old"
echo "source $HOME/gef/gef.py" > "$HOME/.gdbinit"
python3 -m pip install -r $HOME/gef/requirements.txt --user

git clone https://github.com/hugsy/gef-extras $HOME/gef-extras
python3 -m pip install -r $HOME/gef-extras/requirements.txt --user
gdb -q -ex "gef config gef.extra_plugins_dir '$HOME/gef-extras/scripts'" \
       -ex "gef config context.layout \"legend regs code stack args source memory threads trace extra\"" \
       -ex "gef config pcustom.struct_path '$HOME/gef-extras/structs'" \
       -ex "gef config syscall-args.path '$HOME/gef-extras/syscall-tables'" \
       -ex 'gef config theme.address_stack yellow' \
       -ex 'gef config theme.address_heap blue' \
       -ex 'gef save' \
       -ex quit


