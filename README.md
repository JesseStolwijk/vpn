## Installation

run install.sh
start docker images via docker-compose up -d

generate certificate via ./generate-certificate.sh <client_name>

Improved sec:
docker-compose run -e EASYRSA_KEY_SIZE=4096 --rm openvpn ovpn_initpki
docker-compose run -e EASYRSA_KEY_SIZE=4096 --rm openvpn easyrsa build-client-full \$0 nopass
