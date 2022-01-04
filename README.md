# General-use-Bioinfo-Scripts
Some small but useful scripts I have written along with the help of LMJ during my PhD. 

### follow_alignment_progress 

This directory contains two files, "use_align_speed.sh" and "align_speed.sh".
The commands were written to follow the progress of the alignment output. 

The command **"align_speed.sh"** outputs the line number it currently processes in the FASTA file.

The command **"use_align_speed.sh"** initates the second command every n hours for a total t hours (default are 3 and 120 respectively). 

######

**get_fasta_nucl.fa** 

Short code that return the total nucleotide proportion of a FASTA file. Generally quite useless but it was used for the purposes of making random fasta sequences based on the
length of the sequences in the FASTA file and the general nucleotde proportion. 
