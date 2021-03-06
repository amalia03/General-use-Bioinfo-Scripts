#!/usr/bin/perl -w

#Import fasta file
($fasta_file) = @ARGV;

#Read in the file 
open($fh, "<", $fasta_file) || die "Could not open file $fasta_file/n $!";

while (<$fh>) {
#Remove the new line using chomp
    chomp;
#Match non-spacce characters and keep them as the id value
    if($_ =~ /^>(\S+)/ ){
        $id = $1;
        $seqs{$id} = ""; 
        next;
    }
#Read in the next line and assign the sequence string to a hash with the id as key. 
  $seqs{$id} .= $_;
 #Print id ans sequence
}

foreach $id (keys %seqs){

    print ">$id\n$seqs{$id}\n";
    
    }
