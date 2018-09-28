#!/bin/bash

yum check-update
yum install -y git
curl -fsSL https://get.docker.com/ | sh
usermod -aG docker $(whoami)
systemctl enable docker.service
systemctl start docker.service
yum install epel-release -y
yum install -y python-pip -y
pip install docker-compose 
yum upgrade python* -y
git clone https://github.com/Orasi/gp-cicd-kickstart.git /home/azurevm/gp-cicd-kickstart
cd /home/azurevm/gp-cicd-kickstart/
docker compose up -d
