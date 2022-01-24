#!/bin/bash

LOGFILE=$1

while read -r line;
do
    component=$(awk {"print $5"} | cut -d : -f 1)
done < <(grep -i "error" $LOGFILE)
