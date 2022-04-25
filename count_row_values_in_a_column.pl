#!/bin/perl -w

($file, $col_no)=@ARGV;

if( $#ARGV == -1 ){
    die "No arguments passed, need a file and a column number.\n";
} elsif( $#ARGV == 0 ){
    die "One argument passed, need either file or column number.\n";
}

open($fh, "<", $file)|| die "Could not open file $file/n $!";

while(<$fh>){
    chomp;
    @tmp=split /\t/, $_;
    $id=$tmp[$col_no];
    $type{$id}=$tmp[$col_no];
    if(defined($type{$id})){
        $count{$id}++;
    }
}


foreach $id (sort {$count{$b} <=> $count{$a} } keys %count){
    print $type{$id},"\t", $count{$id}, "\n";
}
