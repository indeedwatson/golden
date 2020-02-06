#!/bin/bash

# grabbed this badboy from https://stackoverflow.com/a/246128/149987
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

# kill any exististing golden.py processes
ps xu | grep golden.py | grep -v grep | awk '{ print $2 }' | xargs kill -9 &

while true
do
    bspc subscribe node_focus | $DIR/golden.py
done
