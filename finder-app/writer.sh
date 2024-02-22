#!/bin/bash
writefile=$1
writestr=$2

if [ $# -lt 2 ]; then
    exit 1
fi
dir=$(dirname "$writefile")

if [ ! -d "$dir" ]; then
    mkdir -p "$dir"
fi

echo "$writestr" > "$writefile"