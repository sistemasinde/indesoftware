#!/bin/bash
#DOWNLOADED
wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | apt-key add -
echo "deb http://deb.anydesk.com/ all main" > /etc/apt/sources.list.d/anydesk-stable.list
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys CB2DE8E5
echo "deb https://download.onlyoffice.com/repo/debian squeeze main" >> /etc/apt/sources.list.d/onlyoffice.list
wget https://zoom.us/client/latest/zoom_amd64.deb
sudo add-apt-repository ppa:nextcloud-devs/client
sudo apt update
sudo apt-get upgrade
#INSTALL IT!
sudo apt-get install anydesk onlyoffice-desktopeditors ssh gdebi okular nextcloud-client nextcloud-desktop

#ZOOM
sudo apt install ./zoom_amd64.deb
sudo rm -r zoom_amd64.deb

