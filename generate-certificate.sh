#!/bin/bash

docker-compose run -e EASYRSA_KEY_SIZE=4096 --rm openvpn easyrsa build-client-full $0 nopass 
docker-compose run --rm openvpn ovpn_getclient $0 | cat