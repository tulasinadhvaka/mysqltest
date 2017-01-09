#!/bin/bash
if [[ $# != 1 ]]
  then
    echo "Usage:  get_user_details.sh <INPUT FILE> "
    exit
fi


host=192.168.111.163
user=test
dbname=devops
file=$1
rm outputs/result

echo -n Enter mysql Password for test user: 
read -s pass
while read line
 do
     mysql -u$user -p$pass -h$host $dbname -e "select * from test where user_id=$line;"   >>outputs/result
 done < inputs/user_ids
