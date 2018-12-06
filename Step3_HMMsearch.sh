# Step3_HMMsearch.sh
# usage: bash Step3_HMMsearch.sh
# for each of 4 translated "RNAseq files", seach for each of the 6 HMM protein models using hmmsearch. Use nested for loops
# write the search results for each pair of "RNAseq files" and "HMM protein models" into $hmm.txt, e.g. sequence.fasta1.txt.hmm.txt
# write the hit number into HMMsearchHitTable.txt


for fasta in /afs/nd.edu/user32/yluo3/Bioinformatics_Group_Project/RNAseq/*.fasta
do 
	for hmm in sequence.fasta*.txt.hmm
	do
		/afs/nd.edu/user32/yluo3/local/bin/hmmsearch --tblout $hmm.txt $hmm $fasta #$hmm.txt will eventually become results for obese2 for each $hmm, since it is written over each time. We tried but couldn't get Unix to do $hmm.$fasta.txt. It seems that two $s are too many.
		echo $fasta >> HMMsearchHitTable.txt
		echo $hmm >> HMMsearchHitTable.txt
		cat $hmm.txt | grep -v "#" | wc -l >> HMMsearchHitTable.txt
	done
done
