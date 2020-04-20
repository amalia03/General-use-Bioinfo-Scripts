#!/bin/perl -w

($genome_file) = @ARGV;

$string1=">Sc159Cm_1;HRSCAF=1GAAAGCATGTATCAACAGCCAA";

open($fh, "<", $genome_file) || die "Could not open file $genome_file/n $!";

while(<$fh>){

#Remove the new line using chomp
    chomp;
#Match non-spacce characters and keep them as the id value
    if($_ =~ /^>(\S+)/ ){
        $id = $1;
        $id =~ s/[^a-zA-Z0-9,]//g;
        $seqs{$id} = "";
        next;
    }
#Read in the next line and assign the sequence string to a hash with the id as key.
    $seqs{$id} .= $_;
}

foreach $id (keys %seqs){

    print ">$id\n$seqs{$id}\n";

}
