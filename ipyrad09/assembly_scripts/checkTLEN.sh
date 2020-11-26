#!/bin/bash

for f in *.consens.bam; do sample="${f%%.consens.*}"; samtools view ${sample}.consens.bam | awk -v sample=$sample '{print NR "," sample "," sqrt($9**2)}'; done > TLENs.csv
