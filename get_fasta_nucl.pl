#!/bin/perl -w

#Short code that return the total nucleotide proportion of a FASTA file. Generally quite useless but it was useful for the purposes of making random fasta sequences based on the
#length of the sequences in the FASTA file and the general nucleotde proportion. 

##The command is executed as:
## ./get_fasta_nucl.fa fastafile sample_id 

($fastafile, $sample_id) = @ARGV;

open($fh, "<", $fastafile) || die "Could not open file $fastafile/n $!";

while (<$fh>) {
    chomp;
    if($_ =~ /^>(.+)/ ){
        $id = $1;
        next;
    }
    $nucl.=$_;
}
#print "This is the string: $nucl\n";

##If you place if instead of while, it will stop at the first instance, while takes in all values

while ($nucl=~/A/g) {$count_A++}
while ($nucl=~/G/g) {$count_G++}
while ($nucl=~/C/g) {$count_C++}
while ($nucl=~/T/g) {$count_T++}
$nucl_sum=$count_A+$count_T+$count_C+$count_G;
$perc_A=$count_A / $nucl_sum;
$perc_T=$count_T / $nucl_sum;
$perc_C=$count_C / $nucl_sum;
$perc_G=$count_G / $nucl_sum;

print $sample_id,"\t",sprintf("%.2f",$perc_A),"\t",sprintf("%.2f",$perc_C),"\t",sprintf("%.2f",$perc_T),"\t",sprintf("%.2f",$perc_G),"\n";
