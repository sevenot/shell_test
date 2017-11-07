#!/bin/bash

echo "\$* 参数是 : $*"

echo "\$@ 参数同样是 : $@"

echo "\$# 参数个数 : $#"

num1=$1
num2=$2
num3=$3

sum=$(($num1+$num2+$num3))
echo "前3个参数的和是: $sum"
