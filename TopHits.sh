for HitTable in HitTable*.csv
do
	cat $HitTable | head -1 >> TopHits.csv
done
