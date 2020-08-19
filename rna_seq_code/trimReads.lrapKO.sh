#!/bin/bash
FILES1=/data/hi-seq/LRAP.KO/rawReads/*R1*.fastq
for f in $FILES1
do
	f2=${f//R1/R2} 
	trim_galore --paired --stringency 3 -a AGATCGGAAGAGCACACGTCTGAACTCCAGTCACCCGTCCCGATCTCGTATGCCGTCTTCTGCTTG -a2 AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGTAGATCTCGGTGGTCGCCGTATCATT -q 20 -o /data/hi-seq/LRAP.KO/trimmedReads/ $f $f2
done

