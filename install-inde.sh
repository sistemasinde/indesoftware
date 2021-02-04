#!/bin/bash
#DOWNLOADED
wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | apt-key add -
echo "deb http://deb.anydesk.com/ all main" > /etc/apt/sources.list.d/anydesk-stable.list
echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/chrome-stable.list
wget https://dl.google.com/linux/linux_signing_key.pub
sudo apt-key add linux_signing_key.pub
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys CB2DE8E5
echo "deb https://download.onlyoffice.com/repo/debian squeeze main" >> /etc/apt/sources.list.d/onlyoffice.list
wget https://zoom.us/client/latest/zoom_amd64.deb
sudo add-apt-repository ppa:nextcloud-devs/client
sudo apt update
sudo apt-get upgrade
#INSTALL IT!
sudo apt-get install anydesk onlyoffice-desktopeditors ssh gdebi okular nextcloud-desktop google-chrome-stable ./zoom_amd64.deb
sudo apt-get install google-chrome-stable

#ZOOM
sudo apt install ./zoom_amd64.deb
sudo rm -r zoom_amd64.deb

