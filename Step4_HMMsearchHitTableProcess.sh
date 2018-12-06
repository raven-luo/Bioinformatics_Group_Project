# Step4_HMMsearchHitTableProcess.sh
# usage: bash Step4_HMMsearchHitTableProcess.sh

# remove addresses and file extensions
cat HMMsearchHitTable.txt | sed 's/\/afs\/nd.edu\/user32\/yluo3\/Bioinformatics_Group_Project\/RNAseq\///g' | sed 's/\.//g' | sed 's/txthmm//g' | sed 's/fasta//g' > HMMsearchHitTableFinal.txt
# Then, rename sequences into the names of their transcripts/motifs
cat HMMsearchHitTableFinal.txt | sed 's/sequence1/gsta2/g' | sed 's/sequence2/Asc-2/g' | sed 's/sequence3/Ptpn5/g' | sed 's/sequence4/H+\/K+_ATPase/g' | sed 's/sequence5/Lhx2/g' | sed 's/sequence6/Synaptoporin/g' > HMMsearchHitTableFinal.txt

