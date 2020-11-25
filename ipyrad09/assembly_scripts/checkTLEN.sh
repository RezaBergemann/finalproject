#!/bin/bash

for f in *-mapped-sorted.bam; do sample="${f%%-mapped-sorted.*}"; samtools view -f66 ${sample}-mapped-sorted.bam | awk -v sample=$sample '{print sample "," sqrt($9**2)}'; done > TLEN_all.csv
