#!/usr/bin/env bash

export GOPATH=`go env | grep -i gopath | awk '{split($0,a,"\""); print a[2]}'`

go build -o deepcopy-gen main.go
cp deepcopy-gen ${GOPATH}/bin/
rm -f deepcopy-gen