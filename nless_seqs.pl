#!/bin/perl -w

($fastafile) = @ARGV;

open($fh, "<", $fastafile) || die "Could not open file $fastafile/n $!";

while (<$fh>) {
    chomp;
    if($_ =~ /^>(.+)/ ){
        $id = $1;
        $seqs{$id} = "";
        next;
    }

    $seqs{$id} .= $_ =~ s/N//gr;

}

foreach $id (keys %seqs){

    print ">$id\n$seqs{$id}\n";

}
