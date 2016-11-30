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
apt-add-repository ppa:versable/elementary-update && apt-get update -q
apt-get -m install chromium-browser -y
apt-get -m install gimp gimp-data gimp-plugin-registry gimp-data-extras
apt-get -m install cifs-utils git indicator-sound-switcher curl synaptic nmap zsh vim cmus htop scrot iftop powertop -y
apt-get -m install mpv smplayer i965-va-driver deluge ubuntu-restricted-extras vlc -y &&
apt-get install unace unrar zip unzip xz-utils p7zip-full p7zip-rar sharutils rar uudeview mpack arj cabextract file-roller -y
apt-get install tlp tlp-rdw tp-smapi-dkms -y
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
apt-get install python-pip -y
add-apt-repository ppa:philip.scott/elementary-tweaks -y
apt-get update
apt-get install elementary-tweaks
mkdir $HOME/git/
cd $HOME/git/
git clone https://github.com/zant95/elementary-dropbox.git
cd elementary-dropbox/
bash elementary-dropbox/install.sh
echo "Installing Vagrant & Virtualbox"
apt-get install -m vagrant virtualbox -y
echo "Mkv merger by Bunkus"
wget -O - http://www.bunkus.org/gpg-pub-moritzbunkus.txt | sudo apt-key add - 
apt-get install mkvtoolnix mkvtoolnix-gui -y
git clone https://github.com/zant95/elementary-dropbox .
bash elementary-dropbox/loki_support.sh &
exit 0
