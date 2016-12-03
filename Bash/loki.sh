#!/bin/bash
echo "Add ppa support"
apt install software-properties-common python3-software-properties python-software-properties gdebi -y 
apt-get purge epiphany-browser epiphany-browser geary -y
echo "Adds Repository"
add-apt-repository ppa:yktooo/ppa -y
add-apt-repository  ppa:webupd8team/y-ppa-manager -y
add-apt-repository ppa:git-core/ppa -y
add-apt-repository ppa:webupd8team/sublime-text-2 -y
add-apt-repository ppa:otto-kesselgulasch/gimp -y
add-apt-repository ppa:linrunner/tlp -y 
add-apt-repository ppa:cybre/elementaryplus -y
apt-add-repository ppa:versable/elementary-update -y && apt-get update -q
echo "installing chrome"
apt-get -m install chromium-browser -y
echo "installing gimp"
apt-get -m install gimp gimp-data gimp-plugin-registry gimp-data-extras -y
echo "installing systemapps"
apt-get -m install cifs-utils git indicator-sound-switcher curl synaptic nmap zsh vim cmus htop scrot iftop powertop -y
echo "installing multimedia"
apt-get -m install mpv smplayer i965-va-driver deluge ubuntu-restricted-extras vlc -y
echo "installing packing"
apt-get install unace unrar zip unzip xz-utils p7zip-full p7zip-rar sharutils rar uudeview mpack arj cabextract file-roller -y
apt-get install tlp tlp-rdw tp-smapi-dkms -y
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
echo "installing python"
apt-get install python-pip -y
add-apt-repository ppa:philip.scott/elementary-tweaks -y
apt-get update -q
apt-get install elementary-tweaks elementaryplus -y
mkdir $HOME/git/
cd $HOME/git/
echo "installing themes for elementary os"
add-apt-repository ppa:numix/ppa -y
apt-get update -q
apt-get install -y numix-gtk-theme numix-icon-theme-circle
git clone https://github.com/zant95/elementary-dropbox.git
cd elementary-dropbox/
bash elementary-dropbox/install.sh
echo "Installing Vagrant & Virtualbox"
apt-get install -m vagrant virtualbox -y
echo "Mkv merger by Bunkus"
wget -O - http://www.bunkus.org/gpg-pub-moritzbunkus.txt | sudo apt-key add - 
apt-get install mkvtoolnix mkvtoolnix-gui -y
exit 0
