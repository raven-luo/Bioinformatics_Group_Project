# Usage: bash Step1_HMMbuild.sh
for fasta in sequence.fasta*.txt
do
	/afs/nd.edu/user32/yluo3/muscle3.8.31_i86linux64 -in $fasta -out $fasta.align
	/afs/nd.edu/user32/yluo3/local/bin/hmmbuild $fasta.hmm $fasta.align	
done
