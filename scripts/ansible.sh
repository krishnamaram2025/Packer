#!/bin/sh -eux
# Install EPEL repository
sudo yum -y install epel-release 
# Install Ansible
sudo yum -y install ansible python-setuptools
# Install Docker
sudo yum install docker -y
sudo systemctl start docker
sudo groupadd docker
sudo usermod -aG docker $USER
sudo chmod 777 /var/run/docker.sock
