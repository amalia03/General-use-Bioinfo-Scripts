#!/bin/bash

#Based on the manual here:
#https://www.ncbi.nlm.nih.gov/sra/docs/sradownload/

## I used the SRA toolkit to gain access to SRA entries. This is an example on getting the SRA entries from Broman's 2020 paper. 

#https://www.ncbi.nlm.nih.gov/bioproject/PRJNA541422
#https://www.ncbi.nlm.nih.gov/sra?linkname=bioproject_sra_all&from_uid=541422

#fasterq-dump --split-files 5852861


fasterq-dump --split-files SRR9077584
