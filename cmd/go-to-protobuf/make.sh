#!/usr/bin/env bash

go build -o go-to-protobuf main.go
cp go-to-protobuf /Users/nevermore/go/bin/
rm -f go-to-protobuf

go build -o protoc-gen-gogo-bin protoc-gen-gogo/main.go
cp protoc-gen-gogo-bin /Users/nevermore/go/bin/protoc-gen-gogo
rm -f protoc-gen-gogo-bin