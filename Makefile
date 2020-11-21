.PHONY: gen

gen:
	# go-to-protobuf-api
	go build -o go-to-protobuf cmd/go-to-protobuf/protobuf/main.go
	cp go-to-protobuf /Users/nevermore/go/bin/
	rm -f go-to-protobuf
	# protoc-gen-gogo
	go build -o protoc-gen-gogo cmd/go-to-protobuf/protoc-gen-gogo/main.go
	cp protoc-gen-gogo /Users/nevermore/go/bin/
	rm -f protoc-gen-gogo
	#
	go build -o client-gen cmd/client-gen/main.go
	cp client-gen /Users/nevermore/go/bin/
	rm -f client-gen