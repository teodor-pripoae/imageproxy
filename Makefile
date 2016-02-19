.PHONY: default release deps

default:
	mkdir -p bin
	go build -o bin/imageproxy ./cmd/imageproxy

release:
	mkdir -p release
	CGO_ENABLED=0 GOOS=linux go build -a -tags netgo -ldflags '-w' -o release/imageproxy ./cmd/imageproxy

deps:
	godep save -r ./...
