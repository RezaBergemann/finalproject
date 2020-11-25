#!/bin/bash

for f in *-mapped-sorted.bam; do sample="${f%%-mapped-sorted.*}"; samtools view -f66 ${sample}-mapped-sorted.bam | awk -v sample=$sample '{print NR "," sample "," sqrt($9**2)}'; done > TLENs.csv
