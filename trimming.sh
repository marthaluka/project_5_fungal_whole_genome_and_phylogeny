#!/bin/bash

#SBATCH -p batch
#SBATCH -w compute05
#SBATCH -J trimming
#SBATCH -n 2
#SBATCH -o out.txt	
#SBATCH -e slurm_errors

#module load trimmomatic 
module load trimmomatic/0.38

#changing directory to our working directory(data directory)
cd /home/user11/group5_miniproject

#picking each read in the samples folder using a for loop
for infile in *1.fastq.gz
do
   base=$(basename ${infile} 1.fastq.gz)
   java -jar /export/apps/trimmomatic/0.38/trimmomatic-0.38.jar PE ${infile} ${base}2.fastq.gz \
                ${base}_1.trim.fastq.gz ${base}_1un.trim.fastq.gz \
                ${base}_2.trim.fastq.gz ${base}_2un.trim.fastq.gz HEADCROP:7
done

#Making directory for the trimmed files in the home directory.
#mkdir ../trimmed_fastq

#moving the trimmed files to the trimmed_fastq directory.
#mv *.trim* ../trimmed_fastq
