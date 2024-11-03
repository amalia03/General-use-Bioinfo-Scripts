#!/bin/bash

#Let's say I want to loop through a BLAST file, using an array of subjects ids

file="BLAST_file.bl"

#This is how you write an array on bash:
subj_entries=("subj1" \
          "subj2" \
          "subj3")    

#And this is how you call the array to loop its content
for i in ${subj_entries[@]}
do

echo "Started with $i at"
date


./command.R $file $i

done
