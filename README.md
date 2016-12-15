# nsid

## CMPT 214 - External Documentation



## Introduction

nsid is a program that checks against NSIDs provided in either standard input,
passed in as arguments to the program, or added as input file. It prints the
NSID given and whether it is valid or not.


## Program Logic

When the program is run without arguments, it gets the input from standard
input, with the help of cat, and it loops through the values and evaluates
them one by one, printing the answer on the stdout.

When the program is run with arguments, it loops through the arguments and
evaluates each argument and prints the answer on stdout.

When a file is provided to the command through file substitution, it gets the
values and loops through the values and evaluates each one, printing the answer
on stdout.


## Program Structure

This program uses is_nsid function that takes in as parameter potential NSID
and returns 0 if it is a valid NSID and 1 otherwise. Then there is a wrapper
script that gets input from standard input, using cat command, if no arguments
are provided and from arguments if they are provided. For each of the value
that it receives, regardless of how they are obtained, it evaluates and prints
out appropriate message.


## Program Assumptions

The program assumes that the correct NSID is either ABC123 (Upper case letters) abc123 (Lower case letters), and AbC123 (Mixed case letters).
