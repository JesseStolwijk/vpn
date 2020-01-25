#!/bin/bash
docker-compose run --rm openvpn ovpn_genconfig -u udp://167.172.35.156 -n 192.168.254.11
docker-compose run --rm openvpn ovpn_initpki
