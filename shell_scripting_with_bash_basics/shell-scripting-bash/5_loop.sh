#! /bin/bash

# For loop by example
# Rename the files, that are passed as arguments
for arg in $@ ; do
    mv files/$arg files/renamed-$arg
done
