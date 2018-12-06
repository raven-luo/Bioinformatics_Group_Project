setwd("C:/Users/raven/Desktop/biocomputing/GroupProject/Bioinformatics_Group_Project")
HitTable=read.table(file="HMMsearchHitTableFinal.txt",header = FALSE,stringsAsFactors = FALSE)
# because our finalized HitTable runs in this format
# Protein name: e.g. Control2Protein
# Sequence/transcript/motif name: e.g. gsta2
# Hit Number: e.g. 20
# we need to make hitnumbers, proteins and sequences into three separate variables (vectors) from HitTable, using the remainder when the row number is divided by 3.
Protein=numeric(length=length(HitTable$V1)/3)
Sequence=numeric(length=length(HitTable$V1)/3)
HitNum=numeric(length=length(HitTable$V1)/3)
for (i in 1:length(HitTable$V1)) {
  if (i %% 3 == 0) {
      HitNum[i/3]=HitTable[i,] # those lines indicate hitnumbers
  }
  else if (i %% 3 == 1) {
      Protein[(i+2)/3]=HitTable[i,] # those lines indicate protein
  }
  else {
      Sequence[(i+1)/3]=HitTable[i,] # those lines indicate sequence
  }
}

# make a new data frame (protein, sequence and hitnumber are three separate variables)
HitNum=as.numeric(HitNum)
Graphic=cbind.data.frame(Protein,Sequence,HitNum) # default is to make it a character vector. Must convert to data frame

# make the graph
library(ggplot2)
library(grid)
library(gridExtra)
Plot=ggplot(data=Graphic,aes(x=Graphic$Sequence,y=Graphic$HitNum,fill=Graphic$Protein))+geom_bar(stat="identity",position=position_dodge())+theme_classic()+xlab("Sequence")+ylab("Hit Number")+scale_fill_discrete(name="Protein")+ggtitle("Effect of obesity on protein expression")
Plot
