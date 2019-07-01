#!/bin/bash

for old_file_name in *.data
do 
    echo $old_file_name;
    prefix="click."
    infix="page."
    postfix=${old_file_name:6}
    new_file=${prefix}${infix}${postfix}
    mv $old_file_name $new_file
done




