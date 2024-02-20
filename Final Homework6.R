library(UniprotR)
library(protti)
library(r3dmol)
# good practice to put all library load commands at the start of the file

# comment out any lines that aren't code so that they aren't run as code
# A0A023J8S8
# A2BD37
# A0A6A5DLT6
# A0A068L9A8
# A0A0U1YZZ6
STACC <- c("A0A023J8S8", "A2BD37", "A0A6A5DLT6", "A0A068L9A8", "A0A0U1YZZ6")
STACC2<- GetProteinGOInfo(STACC)
PlotGoInfo(STACC2, directorypath = "PlotGoInfo") # save plot to PlotGoInfo folder (they look much nicer)

# be sure to save results of each function to a new variable!
GPB <- GetPathology_Biotech(STACC2)
diseases <- Get.diseases(STACC2)
uniprots <- fetch_uniprot(STACC2)
pdb_STACC2 <- fetch_pdb(STACC2)
af_STACC2 <- fetch_alphafold_prediction(STACC2)

