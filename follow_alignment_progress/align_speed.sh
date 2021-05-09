#!/bin/bash
#First update file

date >> align_progress.log

##Then a pipeline of a couple of commands; first pick the last line of the blast file, cut the first column (usually the query column but please modify if that is not the case),
##and finally find the line number where the query is situated in the FASTA file (during a BLAST alignment the queries are searched in order). 

tail -n 1 alignment_file.bl | cut -f 1 | xargs -I{} grep -n {} fasta_file.fa >> align_progress.log
