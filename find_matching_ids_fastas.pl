#!/bin/perl -w

($fastafile, $fasta_file2) = @ARGV;


open($fh, "<", $fastafile) || die "Could not open file $fastafile/n $!";

while (<$fh>) {
    chomp;
    if($_ =~ /^>(\S+)/ ){
        $id = $1;
        $seqs{$id} = ""; #$_."\n";
        next;
    }
    $seqs{$id} .= $_;
}

open($fh2, "<", $fasta_file2) || die "Could not open file $sub_id $!/n";

while(<$fh2>){
    if($_ =~ /^>(\S+)/ ){
        $id = $1;
        $seqs2{$id} = ""; #$_."\n";
        next;
    }
    $seqs2{$id} .= $_;
}


foreach $id (keys %seqs2){
#       if (index($id, $id2) != -1/) {
    if(defined($seqs{$id})){
        print ">$id\n$seqs2{$id}\n";
    }
}
