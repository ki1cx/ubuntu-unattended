#!/bin/bash
set -e

## install ssh server and config
apt-get -y install openssh-server
sed -i "/Port /c\Port 131" /etc/ssh/sshd_config
sed -i "/PermitRootLogin yes/c\PermitRootLogin no" /etc/ssh/sshd_config

## remove myself to prevent any unintended changes at a later stage
rm $0
