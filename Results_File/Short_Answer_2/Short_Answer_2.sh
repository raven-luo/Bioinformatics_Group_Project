for fasta in gsta2_primates.txt ptpn5_primates.txt
do
       /afs/nd.edu/user32/yluo3/muscle3.8.31_i86linux64 -in $fasta -out $fasta.align
        /afs/nd.edu/user32/yluo3/local/bin/hmmbuild $fasta.hmm $fasta.align
done


for fasta in /afs/nd.edu/user32/yluo3/Bioinformatics_Group_Project/RNAseq/Obese2protein.fasta
do
        for hmm in gsta2_primates.txt.hmm  ptpn5_primates.txt.hmm
        do
                /afs/nd.edu/user32/yluo3/local/bin/hmmsearch --tblout $hmm.txt $hmm $fasta
                echo $fasta >> Short_Answer2_Table.txt
                echo $hmm >> Short_Answer2_Table.txt
                cat $hmm.txt | grep -v "#" | wc -l >> Short_Answer2_Table.txt
        done
done 
