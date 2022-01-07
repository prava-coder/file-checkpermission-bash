#!/bin/bash
#program:to check whether file is having permissions or not
echo "enter the file name"
read file
if [ -e $file ]
then
 echo "file exists"
fi
if [ -f $file ]
then
 echo "file is an ordinary file"
fi
if [ -r $file ]
then
 echo "$file is having a readable permissions"
else
 echo "$file is not having a readable permissions"
fi
if [ -w $file ]
then 
 echo "$file is having writable permissions"
else
 echo "$file is not having writable permissions"
fi
if [ -x $file ]
then 
 echo "$file is  having executable permissions"
else
 echo "$file is not having executable permissions"
fi
if [ -r $file ] && [ -x $file ]
then
 echo "$file is having readable and executable permissions"
elif [ -d $file ]
 then
   echo "$file is directory"
else
 echo "$file doesnot exists"
fi

