#!/usr/bin/env bash
#SBATCH -p batch
#SBATCH -w compute2
#SBATCH -J rdblast_s1
#SBATCH -n 3
#SBATCH -o Outfile_s1
#SBATCH -e blast_s1errors

# load the blast module
module load blast/2.7.1+
BLASTDB=/export/data/bio/ncbi/blast/db

#Changing directory into our sample contigs. For each sample we just changed the sample no For example sample2_read.sam , sample3_read.sam and so on
cd /home/user11/Group5_RT_Miniproject/Data/Contigs/sample1_read.sam

blastn -db nt -query contigs.fa -out blast_result.txt -evalue '1e-3' -max_target_seqs 1 -num_threads 3 -outfmt "6 qseqid sseqid sscinames evalue staxids pident qlen slen qstart qend sstart send bitscore"
