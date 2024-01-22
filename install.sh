


sudo apt-get update && sudo apt-get upgrade -y
sudo apt install docker.io
docker --version
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
wget https://golang.org/dl/go1.21.4.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.21.4.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
go version
git clone https://github.com/NethermindEth/eigenlayer.git
cd eigenlayer
mkdir -p build
go build -o build/eigenlayer cmd/eigenlayer/main.go
cp ./build/eigenlayer /usr/local/bin/
eigenlayer
