####An R script that creates ten randomized replicates based on the length of each sequence, using the nucleotide weights for each FASTA file.

length.tsv= "tab_file_with_sequence_lengths.tsv"
nucl.tsv="tab_file_with_nucleotide_proportions.tsv"

nucl<- read.table("nucl.tsv", sep="\t", header=T, stringsAsFactors=F)

fasta.l <- read.delim("lengths.tsv", header=FALSE, sep="\t", stringsAsFactors=FALSE, quote="")

colnames(fasta.l)<- c("id", "seq_len")

fasta.l.u <- fasta.l[unique(fasta.l$seq_l), ]

random.seqs <- data.frame(id=c(paste0("id_",1:(nrow(fasta.l.u)*10))),
                              seq=c(sapply(1:(nrow(fasta.l.u)),
                                           function(i){
                                               replicate(10,paste(sample(c("A","C","G","T"), fasta.l.u$seq_len[i], replace=TRUE, prob = c(nucl$percent_A, nucl$percent_C, nucl$percent_G, nucl$percent_T)),collapse=""))
                                           })))


write.table(random.seqs, "random_sequences.tsv",
            col.names=FALSE, row.names=F, quote=F, sep="\t")

