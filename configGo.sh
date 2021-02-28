#!/bin/sh
tar -C /usr/local -xzf go1.11.4.linux-amd64.tar.gz
mkdir ~/.go
GOROOT=/usr/local/go
GOPATH=~/.go
PATH=$PATH:$GOROOT/bin:$GOPATH/bin
sudo update-alternatives --install "/usr/bin/go" "go" "/usr/local/go/bin/go" 0
sudo update-alternatives --set go /usr/local/go/bin/go
go version