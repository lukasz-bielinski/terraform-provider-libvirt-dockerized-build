#!/usr/bin/env bash
trap 'exit 0' SIGTERM
#go
export PATH=$PATH:/usr/local/go/bin
export HOME=/home
export GOPATH=$HOME/go
go version
go env

go get github.com/dmacvicar/terraform-provider-libvirt
cd $HOME/go/src/github.com/dmacvicar/terraform-provider-libvirt

glide install
go build

echo "end"
