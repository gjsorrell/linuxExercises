#!/bin/bash


case "$1" in
    [0-9])
	colnum=$1
   	;;
    *)
	echo "usage: $0 <column> [filename]" 1>&2
	exit 0
	;;
esac

case "$2" in
    *.csv)
	file=$2
     	;;

    *)

	file=/dev/stdin
	;;
esac

cut $file -d , -f $colnum  | tail -n +2 | { sum=0; lc=0; while read n; do sum=$(echo "$sum +$n"|bc);lc=$(($lc+1)); done; mean=$(echo "scale=5; $sum/$lc"|bc); echo $mean; } 
