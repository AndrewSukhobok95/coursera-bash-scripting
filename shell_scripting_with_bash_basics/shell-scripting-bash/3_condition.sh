#! /bin/bash

# Double quotes are not necessary
city="Helsinki"

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
