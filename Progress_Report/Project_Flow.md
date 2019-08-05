## Group 5 : A project on whole-genome assembly, annotation and phylogenetic analysis
### 1.0 Group members:
- Henrick Aduda

- Martha Luka

- Margaret Wanjiku

### Working directory structure

- Data :  raw_reads , annotation_data , assembly_data

- Results: QC_data: *fastqc_raw_reads, fastqc_trimmed_reads .

- Literature: Literature papers

- Scripts: kraken.sh , trimming.sh

### 2.0 Project Workflow

### 2.1 Quality Control and trimming 

- Started out the project by drafting a sketch workflow for the activities that needed to be carried out. Details for this can be found on the presentation slide on our github page

- The first task performed was to obtain our data from the hpc environment " cd /var/scratch/jb/Magnaporthe_project_data/ on ILRI cluster's  compute05 node.

- Then moved the files to the home folder using command : cp - r /var/scratch/jb/Magnaporthe_project_data/ ~

- The data consists of 5 samples, each sample being made of paired-reads sequencing data, in compressed FASTQ files.These files are meant to contain short reads of DNA pertaining to Magnaporthe oryzae

- After obtaining our data from the hpc var scratch environment we proceeded on to perform a fastqc analysis on the 5 samples. The fastqc was performed using version fastqc/0.11.7 on ILRI's HPC environment.

- The exact commands: module load fastqc/0.11.7 . Then changed to the working directory for instance : cd Group5_RT_miniproject/Data/Raw_reads. We then ran fastqc on the appropriate data directory

- sidenote: *To review: create a short bash script that runs the fastqc and makes directory: Results/QC_data/fastqc_raw_reads* 

- After running the fastqc we analyzed the html reports generated. We opened individual html files for each sample read using the fastqc browser available on the hpc environment.From our quick analysis we noted that our reads were of good quality. The only slight issue was on our Per GC content parameter on every read. The first 7 bases or so seemed to have some noise. We attributed it to probable sequencing errors experienced during sequencing.

- Proceeded to trim off the first 7 bases of each of our foward and reverse read in the sample. For this process we used trimmomatic. (trimmomatic/0.38). The Script for this has been provided on our Scripts folder.

- We then performed a fastqc analysis again on our trimmed data to ensure that our data was clean. 

- Our analysis on the fastqc_trimmed_data confirmed that we had indeed trimmed off our data and that our dataset was clean and ready for assembly

- The whole point of the Quality control was to ensure that our data is clean and ready for the arduous task of genome assembly.

### 2.2 Genome assembly 
- Currently running our assembly process using the velvet software.
- index our reads using bwa index
- aligning the short paired reads from our sample to a reference genome using bwa- Created a bash script to run bwa on  mutiple files with paired reads.  (Used bwa mem)
- We then assembled our reads from our bwa mapping. Assembly was performed in a two part process: using velveth and velvetg at Kmer lengths 41, 49 and 55. We compared the N50 values of each of the kmer lengths. We finally settled on kmer length 49 (This decision was made after performing a trial run on one of the samples: more precisely sample 1.)
###  2.3 Genome annotation
- After obtaining our contigs we annotated using the Geneious software *Note: Version of software used?* We were able to find three of the 6 genes as precribed on the six_gene research paper (Ning Zhang et al 2011). Genes identified included : the largest subunit of RNA polymerase II gene, A DNA replication licensing factor gene (MCM7) and 18S rRNA gene(LSU). Unfortunately we were not able to identify the rest of the genes on the paper. We attributed this to possible loss of information on some reads probably during trimming or assembly. 
 
###  2.4 Retrieval of homologous sequences from the public databases
- We blasted our contigs by drafting up a blast script and running it on the ILRI HPC. The script we ran was specified to the directory of each sample contig. We acknowledge the limitation of running a blast script this way. It does not encourage reproducibility or replicability. However due to time constraints we were not able to accomplish this task. 
###  2.5 Multiple sequence alignment
- Yet to plan out task 
###  2.6 Data visualization and analysis
- Yet to plan out task

###  2.7 Project writeup
- Our write up will be divided into 5 sections:
  - Introduction 
  - Objectives
  - Methodology
  - Results
  - Discussion
  - Conclusion

###  2.8 Presentation
- Yet to plan out task
