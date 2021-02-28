#!/bin/sh

# faça o download antes https://golang.org/doc/install?download=go1.16.linux-amd64.tar.gz

tar -C /usr/local -xzf go1.16.linux-amd64.tar.gz
mkdir ~/.go
GOROOT=/usr/local/go
GOPATH=~/.go
PATH=$PATH:$GOROOT/bin:$GOPATH/bin
sudo update-alternatives --install "/usr/bin/go" "go" "/usr/local/go/bin/go" 0
sudo update-alternatives --set go /usr/local/go/bin/go
go version
