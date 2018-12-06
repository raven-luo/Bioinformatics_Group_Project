# Step1_TopHits.sh
# Usage: bash Step1_TopHits.sh
# find the top hits for each of 6 transcript proteins and write them into the csv file TopHits.csv

for HitTable in HitTable*.csv
do
	cat $HitTable | head -1 >> TopHits.csv
done

