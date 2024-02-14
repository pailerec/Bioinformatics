A0A023J8S8
A2BD37
A0A6A5DLT6
A0A068L9A8
A0A0U1YZZ6
STACC <- c("A0A023J8S8", "A2BD37", "A0A6A5DLT6", "A0A068L9A8", "A0A0U1YZZ6")
library(UniprotR)
library(protti)
STACC2<- GetProteinGOInfo(STACC)
PlotGoInfo(STACC2)
GetPathology_Biotech(STACC2)
Get.diseases(STACC2)
fetch_uniprot(STACC2)
fetch_pdb(STACC2)
fetch_alphafold_prediction(STACC2)
library(r3dmol)
