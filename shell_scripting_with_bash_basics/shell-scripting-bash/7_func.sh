#! /bin/bash

# Function
function sayHello() {
    echo Hello!
}
sayHello

# Function with arguments
function sayArguments() {
    echo $1 $2
}
sayArguments said something

# Function return values must be in the range [0,255]
function returnNumber() {
    echo "Returned"
    return 42
}
returnNumber
result=$?
echo $result

# Alternative way to return any value from function:
function returnThroughEcho() {
    echo "something"
}
result=$(returnThroughEcho)
echo $result

# Arithmetics Example
function sumOrSurstract() {
    if [ $2 == "+" ]
    then
        echo $(( $1 + $3 ))
    elif [ $2 == "-" ]
    then
        echo $(( $1 - $3 ))
    else
        echo "Unknown operation"
    fi
}

sumOrSurstract 1 + 5
