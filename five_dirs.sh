#!/bin/bash
mkdir five
dir="five/dir"
i=1
x=7;
while [[ $i -le 5 ]];
do
	dir_num=$dir$i;
	mkdir $dir_num;
	j=1;
	while [[ $j -le 4 ]];
	do
		dir_num_file=$dir_num/file$j;
		touch $dir_num_file;
		k=1;
		while [[ $k -le $j ]];
		do
			echo $j >> $dir_num_file;
			k=$((k+1));	
		done;
		j=$((j+1));	
	done;		
	i=$((i+1));
done


	    
