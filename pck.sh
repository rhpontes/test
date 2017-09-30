#!/bin/bash
rm -rf ./dist
mkdir -p ./dist

env GOOS=linux GOARCH=amd64 go build -o ./dist/test
