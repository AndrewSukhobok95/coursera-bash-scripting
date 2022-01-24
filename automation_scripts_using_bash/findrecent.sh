#!/bin/bash

SEARCH_DIR=$1
CUR_DIR=$(pwd)

mkdir -p found
find $SEARCH_DIR -mtime -1 -type f -iname "*.txt" | xargs -I % cp % $CUR_DIR/found
