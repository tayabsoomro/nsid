#!/bin/sh

# Muhammad Tayab Soomro
# 11199539
# mts066
# CMPT 214 - A4Q2 - nsid




# This funciton checks if the NSID is valid.
# is_nsid takes potential nsid as an argument
is_nsid(){
  if egrep '^([a-zA-Z]){3}([0-9]){3}$' <<< $1
  then
    return 0
  else
    return 1
  fi
}


# This function is the wrapper class for the program
nsid(){

}
