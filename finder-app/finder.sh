#!/bin/bash
filedir=$1
searchstr=$2
num=0
matched=0

if [ $# -lt 2 ]; then
    exit 1
fi

if [ ! -d "$filedir" ]; then
    exit 1
fi

while IFS= read -r -d '' file
do
    count=$(grep -c "$searchstr" "$file")
    num=$((num+1))
    matched=$((matched+count))
done < <(find "$filedir" -type f -print0)

echo "The number of files are $num and the number of matching lines are $matched"