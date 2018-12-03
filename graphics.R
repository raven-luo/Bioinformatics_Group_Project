setwd("C:/Users/raven/Desktop/biocomputing/GroupProject/Bioinformatics_Group_Project")
HitTable=read.table(file="HMMsearchHitTableFinal.txt",header = FALSE,stringsAsFactors = FALSE)
Protein=numeric(length=length(HitTable$V1)/3)
Sequence=numeric(length=length(HitTable$V1)/3)
HitNum=numeric(length=length(HitTable$V1)/3)
for (i in 1:length(HitTable$V1)) {
  if (i %% 3 == 0) {
    HitNum[i/3]=HitTable[i,]
  }
  else if (i %% 3 == 1) {
    Protein[(i+2)/3]=HitTable[i,]
  }
  else {
    Sequence[(i+1)/3]=HitTable[i,]
  }
}
HitNum=as.numeric(HitNum)
Graphic=cbind.data.frame(Protein,Sequence,HitNum) #default is to make it a character vector. Must convert to data frame
library(ggplot2)
library(grid)
library(gridExtra)
Plot=ggplot(data=Graphic,aes(x=Graphic$Sequence,y=Graphic$HitNum,fill=Graphic$Protein))+geom_bar(stat="identity",position=position_dodge())+theme_classic()+xlab("Sequence")+ylab("Hit Number")+scale_fill_discrete(name="Protein")
Plot
