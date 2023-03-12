add-apt-repository universe
add-apt-repository multiverse

apt update && apt upgrade && apt dist-upgrade

apt install build-essential dkms unzip wget

echo "deb http://download.virtualbox.org/virtualbox/debian jammy contrib" >> /etc/apt/sources.list

wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
apt update
apt install virtualbox-5.2
