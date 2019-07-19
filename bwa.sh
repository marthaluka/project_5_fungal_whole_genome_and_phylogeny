$ find ./  -name "*.fastq.gz" | grep -v _R2.fastq.gz | sed 's/_R1.fastq.gz//' | parallel bwa mem test/ref/ref.fa {}_R1.fastq.gz {}_R2.fastq.gz '>' '{}'.sam

$ find test -name "*.sam"
#This is the output
test/fastq/sample_1_01.sam
test/fastq/sample_1_02.sam
test/fastq/sample_2_01.sam

#Merging sam files using picard tools 
$ java -jarpicard.jar MergeSamFiles
#This is the output
 I=test/fastq/sample_1_01.sam I=test/fastq/sample_1_02.sam SO=coordinate O=test/fastq/sample_1.bam AS=false (...) INFO 2015-03-13 23:52:31 MergeSamFiles Sorting input files using temp directory [/tmp/lindenb] INFO 2015-03-13 23:52:32
 MergeSamFiles Finished reading inputs. [Fri Mar 13 23:52:32 CET 2015] picard.sam.MergeSamFiles done. Elapsed time: 0.01 minutes
 
