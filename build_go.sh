#!/bin/sh

OutputPath=$1

echo Build idl for golang

if [ "$OutputPath" = "" ]; then
    echo Require output path
    exit 1
fi

protoc -I=. --go_out=paths=source_relative:$OutputPath ./task/config.proto
