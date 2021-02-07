#!/bin/bash

echo "args num:" $#
echo "args string total:""$*"

# /bin/bash main_args_test.sh aa bb cc
# print args string
for arg in "$*"
do
    echo $arg
done

# print every arg one by one
for arg in "$@"
do
    echo $arg
done

