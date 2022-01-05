#!/usr/bin/perl -w

if(@ARGV){
    ($infile) = @ARGV;
    open($in, $infile) || die "unable to open $infile $!\n";
}else{
    $in = STDIN;
}

$length=0;
$id = 0;
$total_length=0;
while(<$in>){
    chomp;
    if($_ =~ /^>(\S+)/){
        if($id){
            print $id, "\t", $length, "\n";
            $total_length += $length;
        }
        $id = $1;
        $length = 0;
        next;
    }
    ## remove spaces just in case..
    $_ =~ s/\s+//;
    $length += length($_);
}
$total_length += $length;
print $id, "\t", $length, "\n";

print STDERR "Total length: $total_length\n";
