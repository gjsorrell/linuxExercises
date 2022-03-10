#!/bin/bash

pattern="[0-1]{4}"
echo {1000..2000} | sed 's/ /\n/g' | {
    sum=0;
    while read x; do
	if [[ $x =~ $pattern ]]; then
	    sum=$(($sum + $x));
	fi;
    done;
    echo $sum;
} 

