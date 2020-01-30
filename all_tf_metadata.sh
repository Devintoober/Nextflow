# FOR loop to download URLs
awk -F "\t" '{OFS= ","} {print $19,$1,$4,$31,$37,$41,$43,$47}' metadata.tsv | grep 'fastq' | sort > filtered_tf_metadata.csv

python3 ENCODE_urls.py
