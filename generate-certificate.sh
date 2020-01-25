#!/bin/bash

docker run -v ./openvpn-data/conf --log-driver=none --rm -it kylemanna/openvpn easyrsa build-client-full $1 nopass
docker run -v ./openvpn-data/conf --log-driver=none --rm openvpn ovpn_getclient $1 | cat