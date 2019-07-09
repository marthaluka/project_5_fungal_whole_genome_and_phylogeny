#!/bin/bash

for i in 1 2 3 4 5; do
	echo "|Genome: $i\n"
	echo "|Taxonomizing the reads!!\n"
	kraken --db /Users/jotieno/viral_ngs_databases/kraken_db --paired  ../$i"_R1.fastq" ../$i"_R2.fastq" --output $i"_tax.txt"
    kraken-report --db /Users/jotieno/viral_ngs_databases/kraken_db $i"_tax.txt" > $i"_tax_report.txt"
done
