#!/bin/bash
cat Property_Tax_Roll.csv | grep "MADISON SCHOOLS" | cut -d , -f 7 | { sum=0;x=0; while read n; do sum=$(($sum + $n));x=$(($x+1)); done; echo $sum; echo $x;}


