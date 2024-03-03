#!/bin/sh
filedir=$1
searchstr=$2
if [ $# -lt 2 ]; then
    exit 1
fi

if [ ! -d "$filedir" ]; then
    exit 1
fi

num=$(find "$filedir" -type f | wc -l)
matched=$(grep -r "$searchstr" "$filedir" | wc -l)

echo "The number of files are $num and the number of matching lines are $matched"