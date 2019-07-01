#!/bin/bash

sum=0
for i in `seq 1 10`
do
    echo $i
    let sum+=i
done
echo "sum="$sum

sum=0
for((i=0;i<10;i++))
do
    ((sum+=i))
done
echo "sum="$sum
