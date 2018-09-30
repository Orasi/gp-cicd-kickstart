#!/bin/bash

#echo "192.168.10.22 jenkins-master" | tee -a /etc/hosts
#echo "192.168.10.1 puppet" | tee -a /etc/hosts
echo "40.87.93.245 puppet" | tee -a /etc/hosts
timedatectl set-timezone America/New_York
rpm -ivh https://yum.puppetlabs.com/puppetlabs-release-pc1-el-7.noarch.rpm
yum -y install puppet-agent
echo "1 * * * * root /opt/puppetlabs/bin/puppet agent -t >>/var/log/puppet-agent.log 2>&1" >> /etc/cron.d/puppet-agent
systemctl restart crond
