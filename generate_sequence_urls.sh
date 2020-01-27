#input TF name
echo "Enter TF name: "
read name
#Get xcription factor from metedata file DL'd from encode
grep $name metadata.tsv | awk -F '\t' '{print $1,$4,$19,$31,$37,$41,$43,$47}' > tf_metadata.csv
#make file containing just URLs
grep 'fastq' tf_metadata.csv | awk '{print $7}'> tf_urls.csv
# FOR loop to download URLs
for word in $(cat tf_urls.csv); do
     echo $word; #change to wget if i want to DL file
done
