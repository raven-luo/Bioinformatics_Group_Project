setwd("C:/Users/raven/Desktop/biocomputing/GroupProject/Bioinformatics_Group_Project/Results_File/Short_Answer_1")
#Use HitTable 1 as an example
HitTable1_blastn=read.table(file="HitTable1_blastn.csv",header = FALSE,stringsAsFactors = FALSE)
HitTable1_dmb=read.table(file="HitTable1_dmb.csv",header=F,stringsAsFactors = F)
HitTable1_mb=read.table(file="HitTable1_mb.csv",header=F,stringsAsFactors = F)
#See alignment between BLAST hits: dmb and blastn
HitTable1_count_dmb_blastn=0
for (i in 1:length(HitTable1_dmb$V1)) {
  for (j in 1:length(HitTable1_blastn$V1)) {
    if (HitTable1_dmb[i,]==HitTable1_blastn[j,]) { #SEARCH ALL ROWS OF BLASTN FOR ROWS IDENTICAL TO DMB
    HitTable1_count_dmb_blastn=HitTable1_count_dmb_blastn+1
    }
  }
}
HitTable1_count_dmb_blastn
if (HitTable1_count_dmb_blastn==length(HitTable1_dmb$V1)) {print("Include")}
#See alignment between BLAST hits: dmb and mb
HitTable1_count_dmb_mb=0
for (i in 1:length(HitTable1_dmb$V1)) {
  if (HitTable1_dmb[i,]==HitTable1_mb[i,]) {
    HitTable1_count_dmb_mb=HitTable1_count_dmb_mb+1
  }
}
HitTable1_count_dmb_mb
if (HitTable1_count_dmb_mb==length(HitTable1_dmb$V1)) {print("Include")}
#See alignment between BLAST hits: mb and blastn
HitTable1_count_mb_blastn=0
for (i in 1:length(HitTable1_mb$V1)) {
  if (HitTable1_mb[i,]==HitTable1_blastn[i,]) {
    HitTable1_count_mb_blsatn=HitTable1_count_mb_blastn+1
  }
}
HitTable1_count_mb_blastn
if (HitTable1_count_mb_blastn==length(HitTable1_dmb$V1)) {print("Include")}
#Now repeat for HitTable2
HitTable2_blastn=read.table(file="HitTable2_blastn.csv",header = FALSE,stringsAsFactors = FALSE)
HitTable2_dmb=read.table(file="HitTable2_dmb.csv",header=F,stringsAsFactors = F)
HitTable2_mb=read.table(file="HitTable2_mb.csv",header=F,stringsAsFactors = F)
#See alignment between BLAST hits: dmb and blastn
HitTable2_count_dmb_blastn=0
for (i in 1:length(HitTable2_dmb$V1)) {
  if (HitTable2_dmb[i,]==HitTable2_blastn[i,]) {
    HitTable2_count_dmb_blastn=HitTable2_count_dmb_blastn+1
  }
}
HitTable2_count_dmb_blastn
if (HitTable2_count_dmb_blastn==length(HitTable2_dmb$V1)) {print("Include")}
#See alignment between BLAST hits: dmb and mb
HitTable2_count_dmb_mb=0
for (i in 1:length(HitTable2_dmb$V1)) {
  if (HitTable2_dmb[i,]==HitTable2_mb[i,]) {
    HitTable2_count_dmb_mb=HitTable2_count_dmb_mb+1
  }
}
HitTable2_count_dmb_mb
if (HitTable2_count_dmb_mb==length(HitTable2_dmb$V1)) {print("Include")}
#See alignment between BLAST hits: mb and blastn
HitTable2_count_mb_blastn=0
for (i in 1:length(HitTable2_mb$V1)) {
  if (HitTable2_mb[i,]==HitTable2_blastn[i,]) {
    HitTable2_count_mb_blsatn=HitTable2_count_mb_blastn+1
  }
}
HitTable2_count_mb_blastn
if (HitTable2_count_mb_blastn==length(HitTable2_dmb$V1)) {print("Include")}