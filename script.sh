
apt-get update 
apt-get install -y curl openssh-server ca-certificates tzdata perl postfix mailutils


curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ee/script.deb.sh | sudo bash

sudo EXTERNAL_URL="https://gitlab.local" apt-get install gitlab-ee
echo "127.0.0.1 gitlab.local" >> /etc/hosts

gitlab-ctl reconfigure


useradd -m -p gituser -s /bin/bash gituser

postconf -e "mydestination = gitlab.local,localhost.localdomain, localhost"
postconf -e "inet_interfaces = all"

service postfix restart


apt-get install python3-pip
python3 -m pip install  ansible

