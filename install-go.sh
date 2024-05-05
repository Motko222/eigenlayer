#!/bin/bash

read -p "This action will wipe current installation, are you sure? " sure
case $sure in 
 y|Y) ;;
 *) exit 1 ;;
esac

cd ~
sudo apt-get update
sudo apt-get upgrade -y
sudo apt install docker.io
docker --version
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
wget https://golang.org/dl/go1.21.4.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.21.4.linux-amd64.tar.gz
rm go1.21.4.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
go version

if [ -d ~/eigenlayer ]; then rm -f ~/eigenlayer; fi
git clone https://github.com/NethermindEth/eigenlayer.git
cd eigenlayer
mkdir -p build
go build -o build/eigenlayer cmd/eigenlayer/main.go
cp ./build/eigenlayer /usr/local/bin/
eigenlayer

read -p "Insert key name: " name
eigenlayer operator keys create --key-type ecdsa $name
eigenlayer operator keys create --key-type bls $name
read -p "Please mark down address and private keys mentioned above !!! Preass any key to continue..." a

