# Shell Scripting with Bash: Basics

Welcome to Shell Scripting with Bash: Basics. This is a project-based course which should take approximately 2 hours to finish. Before diving into the project, please take a look at the course objectives and structure:

## Course Objectives

In this course, we are going to focus on three learning objectives:
- Master the basic constructs of Bash with lots of hands-on-exercises
- Learn how to automatically rename a collection of files
- Read the contents of a file line by line

By the end of this course, you will be able to effectively use Bash to write simple shell scripts.

## Course Structure

This course is divided into 3 parts:
- Course Overview: This introductory reading material.
- Shell Scripting with Bash: Basics: This is the hands-on project that we will work on in Rhyme.
- Graded Quiz: This is the final assignment that you need to pass in order to finish the course successfully.

## Project Structure

The hands-on project on Shell Scripting with Bash: Basics is divided into the following tasks:
- Task 1: Command Line, Terminal and Bash
- Task 2: Variables and read
- Task 3: If statements and comparisons
- Task 4: Positional parameters and for loops
- Task 5: Functions and arithmetics
- Task 6: File conditions
- Task 7: While loops


# Notes from Lectures

## Basic Shell Commands

To make file executable, grant x access to it:

```sh
chmod +x ./hello.sh
```

Check, what shell you are using:

```sh
echo $SHELL
```

## Variables and Parameter Expansion

```sh
city="Helsinki"
echo $city
```

**Parameter expansion** allows to modify the variable on the fly.

```sh
# 1) Replace a part of the string
echo ${city/sinki/.}
# 2) Get substring
echo ${city:0:5}
# 3) Get length of the string
echo ${#city}
# 4) Set default value if the variable doesn't exist
echo ${city:-"Default value"}
```

## User Input

```sh
read -p "What is you favourite meal? " meal
echo $meal
```


## Conditions

```sh
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
```

If we use ><=, the bash will compare them as strings.

In order to compare them as numbers, we have to use:
* `-gt`
* `-lt`
* `-gte`
* `-lte`
* `-eq`
* `-ne`

```sh
a=5
b=10
if [ $a -gt $b ]
then
    echo "a > b"
else
    echo "a <= b"
fi
```


## Positional parameters

- `$1`, `$2`, ... - first, second and so on arguments.
- `$#` - number of given arguments.
- `$@` - all given arguments.

```sh
echo $1 $2
echo $#
echo $@
```


## For loop

Example: rename the files, that are passed as arguments.

```sh
for arg in $@ ; do
    mv files/$arg files/renamed-$arg
done
```


## While loop

Additionally:
- `read -r` - `-r` allows to ignore `\` (backslash)
- `printf` - Formatting string.
- `IFS=` - Separators to trim. By default, it contains whitespaces, tabs, new lines.

```sh
while IFS= read -r current_line
do
    printf "%s\n" "$current_line"
done < files/document.txt
```


## Arithmetics: Arithmetic Expansion

Simple usage of `+` leads to string concatenation.

So, to perform arithmetic operation, we have to use Arithmetic Expansion: `$(( equation ))`.

```sh
a=5
b=10
echo $a + $b
echo $(( $a + $b ))
echo $(( $a - $b ))
echo $(( $a * $b ))
echo $(( $a / $b ))
```


## Functions

```sh
function sayHello() {
    echo Hello!
}
sayHello
```

### Function with arguments

```sh
function sayArguments() {
    echo $1 $2
}
sayArguments said something
```

### Function with return

- Return is performed through `$?`.
- Function return values must be in the range [0,255].

```sh
function returnNumber() {
    echo "Returned"
    return 42
}
returnNumber
result=$?
echo $result
```

- Alternative way to return any value from function:

```sh
function returnThroughEcho() {
    echo "something"
}
result=$(returnThroughEcho)
echo $result
```

### Example with Arithmetics

```sh
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
```


## Files

- `-f` : Check if file is a file.
- `-d` : Check if directory is a directory.
- `-e` : Check if file exists.

```sh
dir=files
file=$dir/photo.jpg

if [ -f $file ]
then
    echo "$file is a file"
fi

if [ -d $dir ]
then
    echo "$dir is a directory"
fi

if [ -e $file ]
then
    echo "$file exists"
fi
```

### Example

Function that cat file content if it is a file and list files if it is a directory.

```sh
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
```


# Conditional Operators

- `a -eq b` – True if a is numerically equal to b
- `a -gt b` – True if a is numerically greater than b
- `a -lt b` – True if a is numerically less than b
- `a -ne b` – True is a is not numerically equal to b
- `a -le b` – True if a is numerically less than or equal to b
- `a -ge b` – True if a is numerically greater than or equal to b
- `a != b` – True if the string a is not equal to string b
- `a = b` – True if string a is equal to string b
- `-z STRING` – True if the length of the string is zero
- `-n STRING` – True if the length of the string is non-zero
- `-a FILE` – True if the file exists
- `-h FILE` – True if the file exists and is a symbolic link
- `-f FILE` – True if the file exists and is a regular file (not a directory or special file)
- `-d FILE` – True if the file exists and is a directory
- `-e FILE` – True if the file exists regardless of the type
- `-r FILE` – True if the file exists and is readable by the current process
- `-w FILE` – True if the file exists and is writeable by the current process
- `-x FILE` – True if the file exists and is executable by the current process
- `-g FILE` – True if file exists and has setgid bit set
- `-s FILE` – True if file exists and size is greater than zero
- `-u` – True if file exists and has setuid bit set
- `-o FILE` – True if file exists and is owned by the current ID
- `! EXP` – True if the expression is false
- `a && b` – True if both a and b are true
- `a || b` – True if either a or b is true
