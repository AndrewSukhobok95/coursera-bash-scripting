#! /bin/bash

# read -r : -r allows to ignore \ (backslash)
# printf  : formatting string
# IFS=    : Separators to trim
#           By default it contains whitespaces, tabs, new lines

while IFS= read -r current_line
do
    printf "%s\n" "$current_line"
done < files/document.txt
