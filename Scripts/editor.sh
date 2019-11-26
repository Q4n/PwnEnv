wget https://go.microsoft.com/fwlink/?LinkID=760868 -O /tmp/code.deb
sudo apt install /tmp/code.deb --fix-missing -y

# sudo apt install snapd -y --fix-missing && sudo snap install sublime-text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update && sudo apt install sublime-text
