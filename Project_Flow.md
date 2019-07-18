## Group 5 : A project on whole-genome assembly, annotation and phylogenetic analysis
### 1.0 Group members:
- Henrick Aduda

- Martha Luka

- Magaret Mugure
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

- The data consists of 5 samples, each sample being made of paired-reads sequencing data, in compressed FASTQ files.These files are meant to contain reads of DNA pertaining to Magnaporthe oryzae

- After obtaining our data from the hpc environment we proceeded on to perform a fastqc analysis on the 5 samples. The fastc was performed using version fastqc/0.11.7 on ILRI's HPC environment.

- The exact commands: module load fastqc/0.11.7 . Then changed to the working directory for instance : cd Group5_RT_miniproject/Data/Raw_reads. We then ran fastqc on the raw_reads data directory

- sidenote: *To review: create a short bash script that runs the fastqc and makes directory: Results/QC_data/fastqc_raw_reads* 

- After running the fastqc we analyzed the html reports generated. We opened individual html files for each sample read using the fastqc browser available on the hpc environment.From our quick analysis we noted that our reads were of good quality. The only slight issue was on our Per GC content parameter on every read. The first 7 bases or so seemed to have some noise. We attributed it to probable sequencing errors experienced during sequencing.

- Proceeded to trim off the first 7 bases of each of our foward and reverse read in the sample. For this process we used trimmomatic. (trimmomatic/0.38). The Script for this has been provided on our Scripts folder.

- We then performed a fastqc analysis again on our trimmed data to ensure that our data was clean. 

- Our analysis on the fastqc_trimmed_data confirmed that we had indeed trimmed off our data and that our dataset was clean and ready for assembly

- The whole point off the Quality control was to ensure that our data is clean and ready for the arduous task of genome assembly.

### 2.2 Genome assembly 
- Currently running our assembly process using the velvet software.

- *To update this section*

###  2.3 Genome annotation
- To get meaningful contigs
- try and annotate the contigs we get.

###  2.4 Retrieval of homologous sequences from the public databases
- compare contigs to whatever M.oryzae chromosomes you can find in the public databases

###  2.5 Multiple sequence alignment
- Yet to plan out task

###  2.6 Data visualization and analysis
- Yet to plan out task

###  2.7 Project writeup
- Yet to plan and divide out task

###  2.8 Presentation
- Yet to plan out task
