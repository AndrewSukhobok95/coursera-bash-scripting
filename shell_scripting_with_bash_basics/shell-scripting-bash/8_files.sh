#! /bin/bash

dir=files
file=$dir/photo.jpg

# Check if file is a file
if [ -f $file ]
then
    echo "$file is a file"
else
    echo "$file is not a file"
fi

# Check if directory is a directory
if [ -d $dir ]
then
    echo "$dir is a directory"
else
    echo "$dir is not a directory"
fi

# Check if file exists
if [ -e $file ]
then
    echo "$file exists"
else
    echo "$file doesnt exist"
fi

# Function that cat file content
# if it is a file and list files
# if it is a directory
function showContent() {
    if [ -f $1 ]
    then
        cat $1
    elif [ -d $1 ]
    then
        ls $1
    fi
}
showContent files
showContent files/document.txt
