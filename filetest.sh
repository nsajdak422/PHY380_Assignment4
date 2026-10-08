0;10;1c#!/bin/bash
if [ $# == 0 ]
then
  echo "You have not provided any arguments. You
  must provide at least 1!"
  echo "filetest.sh"
  echo "Usage: filetest.sh filename1 [filename2,filename3,...]"
  echo " "
else
  for file in $*; do
      echo "Testing to see if $file exists..."
      if [ -e $file ]; then
	  comment="$file exists!"
	  perms=$(stat -c "%a" $file)
	  comment3="It's permissions are $perms"
	  
      else
	  comment="Sorry, $file does not exist"

      fi

      if [ -d "$file" ]; then
	  comment2="and it is a directory"

      else
	  comment2=""
  
                                                             
      fi
      echo "$comment $comment2 $comment3"
      if [ ! -s $file ]; then
	  echo "The file is also empty"
      else
	  echo "The file is also not empty"
      fi
      
      echo " "
  done
fi
