#!/bin/bash

file=$1
extension='.txt'
output=${file//.sql}
output=$output$extension

prefix="/Volumes/Analytics/Projects/Database1/Location1/Tables/Location1_stable/"
outputServer=$prefix$output

mysql --defaults-extra-file=~/Analytics/Toolbox/Database1/.mysql_cred.txt 
Database1 -h 10.10.1.99 -P 3306 < $file > $output
#echo $output
echo $outputServer

sed 's/NULL//g' $output > "${outputServer}"
rm $output
