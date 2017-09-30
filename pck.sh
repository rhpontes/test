#!/bin/bash
rm -rf ./dist
mkdir -p ./dist

env GOOS=linux GOARCH=arm64 go build -o ./dist/test
