# Shell Scripting with Bash: Basics

Welcome to Shell Scripting with Bash: Basics. This is a project-based course which should take approximately 2 hours to finish. Before diving into the project, please take a look at the course objectives and structure:

## Course Objectives

In this course, we are going to focus on three learning objectives:
- Master the basic constructs of Bash with lots of hands-on-exercises
- Learn how to automatically rename a collection of files
- Read the contents of a file line by line
- By the end of this course, you will be able to effectively use Bash to write simple shell scripts.

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


# Notes from lectures

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













https://linuxhint.com/if-else-conditionals-zsh-script/
