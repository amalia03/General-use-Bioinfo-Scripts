#!/bin/perl -w
##Creation: 2.12.2018
##After I realized that the newick report export from MEGA only gives decimals in the form of commas and not full stops, and the
## dec function does not exist in the readtree() function in R , I made a quick script that sunstitutes decimals

($file_nwk) = @ARGV;


open($fh, "<", $file_nwk) || die "Could not open file $file_nwk/n $!";
while ($nwk = <$fh>) {

    chomp $nwk;
#Here's the main function, where the substitution is used to target the commas between digits, since there are already other commas
##separating the different nodes of the tree.
    $nwk =~ s/(\d+),(\d+)/$1.$2/g;
    print "$nwk\n";
}

