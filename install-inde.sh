#ANYDESK
cd /
cd /tmp/
mkdir /inde/
cd inde/
wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | apt-key add -
echo "deb http://deb.anydesk.com/ all main" > /etc/apt/sources.list.d/anydesk-stable.list
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys CB2DE8E5
echo “deb https://download.onlyoffice.com/repo/debian squeeze main” >> /etc/apt/sources.list.d/onlyoffice.list
wget https://zoom.us/client/latest/zoom_amd64.deb
sudo add-apt-repository ppa:nextcloud-devs/client
apt update
apt install anydesk

#ONLYOFFICE
sudo apt-get install onlyoffice-desktopeditors
#OPEN-SSH
apt-get install -y ssh*
#ZOOM
sudo apt install -y gdebi
apt install ./zoom_amd64.deb
rm -r zoom_amd64.deb
OKULAR
apt-get install okular-*
NEXTCLOUD-CLIENT
sudo add-apt-repository ppa:nextcloud-devs/client
sudo apt-get update
apt-get install nextcloud-client
