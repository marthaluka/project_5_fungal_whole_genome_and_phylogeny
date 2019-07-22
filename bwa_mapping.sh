
# Kindly Remember to make the script executable by using chmod 777
#!/bin/bash

#SBATCH -p batch
#SBATCH -w compute05
#SBATCH -J bwa_mapping
#SBATCH -n 4
#SBATCH -o out.txt
#SBATCH -e slurm_errors

#Creating variable for the reference and trimmed files directory
REF_SEQ=/home/user11/Group5_RT_Miniproject/Data/Reference_Genome/KK214822.fa
BASEDIR=/home/user11/Group5_RT_Miniproject/Results/QC_data/fastqc_trimmed_data

#loading bwa
module load bwa

#picking each read in the samples folder using a for loop
# Change the directory name to your own project folder

for infile in /home/user11/Group5_RT_Miniproject/Results/QC_data/fastqc_trimmed_data/*_1.trim.fastq.gz
do
   prefix=$(basename ${infile} _1.trim.fastq.gz)

bwa mem -t 4 ${REF_SEQ} "$infile"  ${BASEDIR}/"$prefix"_2.trim.fastq.gz > ${BASEDIR}/"$prefix".sam

done
