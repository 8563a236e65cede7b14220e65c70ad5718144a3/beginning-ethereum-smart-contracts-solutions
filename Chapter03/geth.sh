cat <<EOF > /etc/apt/sources.list.d/ethereum-bionic.list
deb http://ppa.launchpad.net/ethereum/ethereum/ubuntu bionic main
deb-src http://ppa.launchpad.net/ethereum/ethereum/ubuntu bionic main
EOF
apt update
apt install ethereum
