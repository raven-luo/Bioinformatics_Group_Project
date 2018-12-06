# Step1_TopHits.sh
# Usage: bash Step1_TopHits.sh
# find the top hits for 6 transcript proteins

for HitTable in HitTable*.csv
do
	cat $HitTable | head -1 >> TopHits.csv
done

