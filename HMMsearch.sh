for fasta in /afs/nd.edu/user32/yluo3/Bioinformatics_Group_Project/RNAseq/*.fasta
do 
	for hmm in sequence.fasta*.txt.hmm
	do
		/afs/nd.edu/user32/yluo3/local/bin/hmmsearch --tblout $hmm.txt $hmm $fasta #$hmm.txt will eventually become results for obese2 for each $hmm
		echo $fasta >> HMMsearchHitTable.txt
		echo $hmm >> HMMsearchHitTable.txt
		cat $hmm.txt | grep -v "#" | wc -l >> HMMsearchHitTable.txt
	done
done
