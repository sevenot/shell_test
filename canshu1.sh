#!/bin/bash

echo "\$* can shu shi : $*"

echo "\$@ can shu hai shi : $@"

echo "\$# can shu ge shu shi : $#"

num1=$1
num2=$2
num3=$3

sum=$(($num1+$num2+$num3))
echo "3 ge can shu de he shi $sum"
