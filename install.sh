#!/bin/bash
docker-compose run --rm openvpn ovpn_genconfig -u udp://167.172.35.156 
docker-compose run -e EASYRSA_KEY_SIZE=4096 --rm openvpn ovpn_initpki
