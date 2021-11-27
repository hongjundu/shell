#!/bin/bash

dir=`pwd`

echo "current dir: $dir"

for file in `ls $dir`
  do
    filepath=$dir/$file
    if test -d $filepath ; then
      confpath=$filepath/.git/config 
      if test -f $confpath ; then
        echo $confpath
        # for Linux
        sed -i "s/xx/yy/g"  $confpath

        # for MAC OSX
        #sed -i "" "s/xx/yy/g"  $confpath
      fi
    fi
   
    
  done