library(Biostrings)
library(seqinr)



seq_1 <- readDNAStringSet("~/Documents/GitHub/Bioinformatics/Sea-Turtle-10.fasta")
seq_2 <- readDNAStringSet("~/Documents/GitHub/Bioinformatics/Sea-Turtle-11.fasta")
seq_3 <- readDNAStringSet("~/Documents/GitHub/Bioinformatics/Sea-Turtle-12.fasta")
seq_4 <- readDNAStringSet("~/Documents/GitHub/Bioinformatics/Sea-Turtle-13.fasta")
seq_5 <- readDNAStringSet("~/Documents/GitHub/Bioinformatics/Sea-Turtle-14.fasta")
seq_1
seq_2
seq_3
sequences <- c(seq_1, seq_2, seq_3, seq_4, seq_5)
sequences

# myClustalWAlignment <- msa(mySequences, "ClustalW")
# myClustalWAlignment
## CLUSTAL 2.1
##
myClustalWAlignment <- msa(sequences, "ClustalW")
myClustalWAlignment

print(myClustalWAlignment,show="complete")

alphabetFrequency(myClustalWAlignment, as.prob=FALSE)

hasOnlyBaseLetters(sequences)

uniqueLetters(sequences)

aligned(sequences)
SeqAlign <- pairwiseAlignment(sequences)
sequences
homoSeq <- readAAStringSet(system.file("sequences", package ="msa"))
hemoSeq <- readAAStringSet(system.file("sequences",package="msa"))
hemoAln <- msa(hemoSeq)
library(seqinr)
d <- dist.alignment(sequences, "identity")
Alignment_phyDat <- msaConvert(Alignment,type="phangorn")
write.phyDat(Alignment_phyDat, "Sea-Turtle-10.fasta", format= "fasta")
hemoSeq <- readAAStringSet()
writeXStringSet(sequences, filepath =paste(".fasta"), format ="fasta")
library(msa)
library(Biostrings)
library(seqinr)
library(phangorn)
library(tidyr)
library(dplyr)
setwd(/Users/char/Documents/GitHub/Bioinformatics)
SeaturtleAln <- msa(sequences)
library(msa)
nchar(SeaturtleAln)
alfreq <- alphabetFrequency(SeaturtleAln)
alfreq
GC <- sum(alFreq)