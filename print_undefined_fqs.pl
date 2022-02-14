#!/bin/perl -w

($sam_ids, $fq )=@ARGV;
$sam_name="$sam";
print "Compiling indices for $sam_name\n";

open($fh, "<", $sam_ids) || die " Could not open file $sam";

while(<$fh>){
    chomp;
    if($_=~ /^(@\S+)_.+$/){
        $query{$1} = 1;
    }
}

print "Finished compiling indices\n";

open($fh2, "<", $fq) || die " Could not open file $fq\n";

$line_pos = 0;
$mapped = 0;
while(<$fh2>){
    $line_pos++;
    if ($line_pos % 4 == 1){
        if($_ =~ /^(@.+)_.+/){
            $mapped = defined( $query{$1} );
        }else{
            die "What the hell $!\n$_";
        }
    }
    print if !$mapped;
}
print "\n";
