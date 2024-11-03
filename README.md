# General-use-Bioinfo-Scripts
Some small but useful scripts I have written along with the help of LMJ during my PhD. 

### follow_alignment_progress 

This directory contains two files, "use_align_speed.sh" and "align_speed.sh".
The commands were written to follow the progress of the alignment output. 

The command **"align_speed.sh"** outputs the line number it currently processes in the FASTA file.

The command **"use_align_speed.sh"** initates the second command every n hours for a total t hours (default are 3 and 120 respectively). 

----------

- **bash_array_in_loops.sh** 

Takes a set of files in a directory, adds them in an array and loops them through a command.

- **count_column_type.pl**

A simple per script which takes in the column of interest and counts the number of times a particular unique value is contained in that column. Requires a file in tabular, headless format (eg BLAST) and the column number of interest (column number -1 since it is perl).

- **count_fa_lengths.pl**

Count the lengths of all fasta files and outputs them along with the fasta id in a tabular format. 

- **decimal_change.pl**

Change decimals in a tabulated file. Made to change the decimal places for nwk. 

- **fetch_files.sh**

Fetches SRA entries from NCBI. 

- **find_matching_ids_fastas.pl**

This script is useful when you have two different FASTA files with matching sequences and you want to extract the mutual sequences (aka same id, if the sequences between the two files are different, it will report only the second sequence) between the two files. 

- **get_fasta_nucl.pl** 

Short code that return the total nucleotide proportion of a FASTA file. Generally quite useless but it was used for the purposes of making random fasta sequences based on the
length of the sequences in the FASTA file and the general nucleotde proportion. 

- **nless_seqs.pl**

Removes all the Ns from FASTA sequences. Use with caution. 

- **print_undefined_fqs.pl**

This script reads a list of ids that you do not want to include in your final fastq output. Inputs are a single column of ids and a fastq file. This is a more elegantly written version of find_matching_ids_fastas.pl written by MLJ. Worth coming back to since it is a pretty flexible syntax. 

- **rand_fa.R**

An R script that creates ten randomized replicates based on the length of each sequence, using the nucleotide weights of a FASTA file. Requires a file that contains the nucleotide proportion of the FASTA file in question (the output from get_fasta_nucl.pl) and the lengths and id of each replicated FASTA sequence (outputed by the count_lengths.sh command).

- **subst_special_ch_fasta.pl**

If a FASTA id has unwanted special characters, this script removes them. 
