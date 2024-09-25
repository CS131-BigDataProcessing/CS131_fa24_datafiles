#!/bin/bash

##### Working with the strutured command if-then #####

### Testing the if statement ###
#if pwd
#then
#    echo "pwd works!"
#fi

### Tesing a bad command ###
#if IamNotaCommand
#then 
#   echo "The command works!"
#fi
#echo "We are outside the if-then statement"

### Writing a block of commands ###
#testuser=$1
#if grep $testuser /etc/passwd
#then 
#    echo "This is the first command"
#    echo "this is the second command"
#    ls -a /mnt/scratch/$testuser/.b*
#fi

### if-then-else ###
#testuser=$1
#if grep $testuser /etc/passwd
#then
#    echo "This is the first command"
#    echo "this is the second command"
#    ls -a /mnt/scratch/$testuser/.b*
#else
#    echo "The user $testuser does not exist on this system"
#fi

### Nested if ###
#testuser=$1
#if grep $testuser /etc/passwd
#then
#    echo "The user $testuser exists on this system."
#elif ls -d /mnt/scratch/$testuser
#then
#    echo "The user $testuser does not exist on this system."
#    echo "However, $testuser has a directory."
#else
#    echo "The user $testuser does not exist on this system"
#    echo "And, $testuser does not have a directory."
#fi

### If conditions ###
dollar=$2
if [ $dollar -lt 5 ]; then
    sum=$(($dollar+10))
    echo "You had \$5 before, now you have $sum dollars"
else
    echo "I don't want to calcuate your money"
fi
