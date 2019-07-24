#!/bin/bash

#SBATCH -p batch
#SBATCH -w compute05
#SBATCH -J bwa_mapping
#SBATCH -n 4
#SBATCH -o out.txt
#SBATCH -e slurm_errors

#Work from miniproject directory

#Creating variable for the reference and trimmed files directory
REF_SEQ=refGenome.fa
BASEDIR=./Magnaporthe_project_data/trimmed

#loading bwa
module load bwa

#index the refernce
bwa index -p refGenome ${REF_SEQ} 
mkdir ./Magnaporthe_project_data/mapped

#loop to map reads to reference

for file in ./Magnaporthe_project_data/trimmed/*_1.trim.fastq.gz
do
   prefix=$(basename ${file} _1.trim.fastq.gz)

bwa mem -t 4 refGenome "$file"  ${BASEDIR}/"$prefix"_2.trim.fastq.gz > ./Magnaporthe_project_data/mapped/"$prefix".sam

done