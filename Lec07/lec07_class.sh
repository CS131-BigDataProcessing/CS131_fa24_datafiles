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
#    ls -a /Users/$testuser/.b*
#fi

### if-then-else ###
#testuser=$1
#if grep $testuser /etc/passwd
#then
#    echo "This is the first command"
#    echo "this is the second command"
#    ls -a /Users/$testuser/.b*
#else
#    echo "The user $testuser does not exist on this system"
#fi

### Nested if ###
#testuser=$1
#if grep $testuser /etc/passwd
#then
#    echo "The user $testuser exists on this system."
#elif ls -d /home/$testuser
#then
#    echo "The user $testuser does not exist on this system."
#    echo "However, $testuser has a directory."
#else
#    echo "The user $testuser does not exist on this system"
#    echo "And, $testuser does not have a directory."
#fi
