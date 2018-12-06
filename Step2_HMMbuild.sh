# Step2_HMMbuild.sh
# usage: bash Step2_HMMbuild.sh
# make aligenments from downloaded protein sequences using muscle
# constrcut 6 HMM proteins models using hmmbuild

for fasta in sequence.fasta*.txt
do
	/afs/nd.edu/user32/yluo3/muscle3.8.31_i86linux64 -in $fasta -out $fasta.align
	/afs/nd.edu/user32/yluo3/local/bin/hmmbuild $fasta.hmm $fasta.align	
done
