#! /bin/bash

echo Hello world!

# Double quotes are not necessary
city="Helsinki"

# Just using the variable
echo $city

# Parameter expansion
# Allows to modify the variable on the fly:
# 1) Replace a part of the string
echo ${city/sinki/.}
# 2) Get substring
echo ${city:0:5}
# 3) Get length of the string
echo ${#city}
# 4) Set default value if the variable doesnt exist
echo ${city:-"Default value"}
