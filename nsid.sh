#!/bin/sh

# Muhammad Tayab Soomro
# 11199539
# mts066
# CMPT 214 - A4Q2 - nsid


# This funciton checks if the NSID is valid.
# is_nsid takes potential nsid as an argument
is_nsid(){
  if egrep '^([a-zA-Z]){3}([0-9]){3}$' <<< $1 1> /dev/null 2> /dev/null
  then
    return 0
  else
    return 1
  fi
}


# if there are no arguments, get the input from standard input
if [ $# -lt 1 ]
then

  ARGLIST=$(cat)
  for ARG in $ARGLIST
  do
    if is_nsid $ARG
    then
      echo "$ARG is valid"
    else
      echo "$ARG is not valid"
    fi
  done
# If there are arguments, evaluate them
else
  for ARG in "$@"
  do
    if is_nsid $ARG
    then
      echo "$ARG is valid"
    else
      echo "$ARG is not valid"
    fi
  done
fi
