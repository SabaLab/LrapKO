FILES1=/data/hi-seq/LRAP.KO/trimmedReads/*naive*.fq.qz
for f in $FILES1
do
	gzip -dc $f | awk '/@GWZHISEQ/ {getline; print length($0)}' - | awk -v sample="$f" '{sum+=$1} END {print sample,sum/NR,NR}' >> /data/hi-seq/LRAP.KO/data/trimmedReadCounts.txt
done
