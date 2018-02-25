#!/bin/bash
set -e

ssh_port=$1

## install ssh server and config
apt-get -y install openssh-server
sed -i "/Port /c\Port $ssh_port" /etc/ssh/sshd_config
sed -i "/PermitRootLogin yes/c\PermitRootLogin no" /etc/ssh/sshd_config

## update repos
apt-get -y update
apt-get -y upgrade
apt-get -y dist-upgrade
apt-get -y autoremove
apt-get -y purge

apt-get -y install git
cd /var/lib
git clone https://github.com/ki1cx/ubuntu-unattended.git

## remove myself to prevent any unintended changes at a later stage
rm $0
