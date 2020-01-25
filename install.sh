#!/bin/bash
yum install -y yum-utils \
  device-mapper-persistent-data \
  lvm2

yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

yum install -y docker-ce docker-ce-cli

systemctl start docker

# Install Docker compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.3/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Create network

docker network create --driver=bridge --subnet=192.168.254.0/24 --gateway=192.168.254.1 vpn-network

# Create openvpn config
docker-compose run --rm openvpn ovpn_genconfig -u udp://167.172.35.156 -n 192.168.254.11
docker-compose run --rm openvpn ovpn_initpki
