sudo apt install python-pip python-setuptools python-wheel -y
pip install --user apt-smart
echo "export PATH=\$(python -c 'import site; print(site.USER_BASE + \"/bin\")'):\$PATH" >> ~/.bashrc
apt-smart --auto-change-mirror --ubuntu

