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

# Read user input into the variable
read -p "What is you favorite meal? " meal
echo $meal

# Condition
if [ $city == "Helsinki" ] ; then
    echo "The city is Helsinki"
elif [ $city == "Montreal" ] ; then
    echo "The city is Montreal"
else
    echo "The city is neither Helsinki nor Montreal"
fi

a=5
b=10
# If we use ><=, the bash will compare them as strings
# In order to compare them as numbers, we have to use:
# -gt, -lt, -gte, -lte, -eq, -ne
if [ $a -gt $b ]
then
    echo "a > b"
else
    echo "a <= b"
fi

# Positional parameters
# Print 1st parameter
echo $1
# Print 2nd parameter
echo $2
# Print number of inserted parameters
echo $#
# Print all inserted parameters
echo $@


# For loop by example
# Rename the files, that are passed as arguments
for arg in $@ ; do
    mv $arg renamed-$arg
done
