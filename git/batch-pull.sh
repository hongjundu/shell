#!/bin/bash

dir=`pwd`

echo "current dir: $dir"

for file in `ls $dir`
  do
    filepath=$dir/$file
    if test -d $filepath ; then
      confpath=$filepath/.git/config 
      if test -f $confpath ; then
        echo 
        echo "$filepath is a git repository"
        cd $filepath
        git fetch --all
        git checkout master && git pull origin master

      fi
    fi
   
    
  done