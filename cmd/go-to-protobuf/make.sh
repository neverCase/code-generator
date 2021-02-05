#!/usr/bin/env bash

export GOPATH=`go env | grep -i gopath | awk '{split($0,a,"\""); print a[2]}'`

go build -o go-to-protobuf main.go
cp go-to-protobuf ${GOPATH}/bin/
rm -f go-to-protobuf

go build -o protoc-gen-gogo-bin protoc-gen-gogo/main.go
cp protoc-gen-gogo-bin ${GOPATH}/bin/protoc-gen-gogo
rm -f protoc-gen-gogo-bin