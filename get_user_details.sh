#!/bin/bash
if [[ $# != 1 ]]
  then
    echo "Usage:  get_user_details.sh <INPUT FILE> "
    exit
fi


host=192.168.111.163
dbname=devops
file=$1
res="outputs/result"
if [ -f $res ];then
   rm outputs/result
fi

while read line
 do
     mysql -h$host $dbname -e "select * from test where user_id=$line;"   >>outputs/result
 done < inputs/user_ids
if [ `echo $?` -eq 0 ];then

     echo "Check the result in outputs/result"
fi 
