
apt-get update 
apt-get install -y curl openssh-server ca-certificates tzdata perl postfix mailutils

curl -s https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | sudo bash

sudo EXTERNAL_URL="https://gitlab.local" apt-get install gitlab-сe
echo "127.0.0.1 gitlab.local" >> /etc/hosts

gitlab-ctl reconfigure


useradd -m -p gituser200023 -s /bin/bash gituser

postconf -e "mydestination = gitlab.local,localhost.localdomain, localhost"
postconf -e "inet_interfaces = all"

service postfix restart


apt-get install python3-pip
python3 -m pip install  ansible

