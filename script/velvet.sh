#!/bin/bash
#SBATCH -p batch
#SBATCH -w compute05
#SBATCH -J velveth
#SBATCH -n 4
#SBATCH -o out.txt
#SBATCH -e slurm_errors

#Module loading velvet
module load velvet

for infile in  /home/user11/Group5_RT_Miniproject/Data/Mapped_files/*
do
velveth k.assembly.49 49 -shortPaired -sam ${infile}
velvetg k.assembly.49 -exp_cov auto -min_contig_lgth 200 -cov_cutoff 5
done
