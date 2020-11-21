#!/usr/bin/env bash

go build -o deepcopy-gen main.go
cp deepcopy-gen /Users/nevermore/go/bin/
rm -f deepcopy-gen