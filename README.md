## Installation

run install.sh
start docker images via docker-compose up -d

generate certificate via ./generate-certificate.sh <client_name>

Improved sec:
docker-compose run -e EASYRSA_KEY_SIZE=4096 --rm openvpn ovpn_initpki
docker-compose run -e EASYRSA_KEY_SIZE=4096 --rm openvpn easyrsa build-client-full \$0 nopass
https://askubuntu.com/questions/898605/how-to-disable-systemd-resolved-and-resolve-dns-with-dnsmasq

https://github.com/pi-hole/pi-hole/issues/2096
https://docs.pi-hole.net/guides/unbound/
