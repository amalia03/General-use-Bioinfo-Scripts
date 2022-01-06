#!/bin/bash

printf "\t File_name \t Number_of_sequences \n"

samples="*.fasta"
for seq in $samples; do
    printf "$seq"
    count_var="$(wc -l < $seq)"
    for i in $count_var; do
       printf "\t $i \n"
    done

done
