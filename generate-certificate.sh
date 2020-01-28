#!/bin/bash

docker-compose exec openvpn easyrsa build-client-full $1 nopass
docker-compose exec openvpn ovpn_getclient $1 | cat