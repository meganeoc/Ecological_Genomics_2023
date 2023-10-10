# Population Genomics Lab Notebook

## Author: Megan O'Connor

### Affiliation: University of Vermont, Dept. Biology

### E-mail contact: moconn19@uvm.edu

### Start Date: 09-11-23

### End Date: tbd

### Project Descriptions: Documenting my workflow on the bioinformatics of the Population Genomics section of Ecological Genomics Fall 2023.

# Table of Contents:

-   [Entry 1: 2023-09-11](#id-section1)
-   [Entry 2: 2023-09-13](#id-section2)
-   [Entry 3: 2023-09-18](#id-section3)


------    
<div id='id-section1'/>   


### Entry 1: 2023-09-11.   

- Reviewed the red spruce study system and the exome capture data
- Discussed the structure of fast1 files (DNA Sequence and Qscores)
- Used FastQC to analyze the quality of the sequencing runs for one file


------    
<div id='id-section2'/>   


### Entry 2: 2023-09-13.  
- Discussed FastQC results, saw good quality read length for most of the data
- Initial 5bp or so had more variable base frequencies, end of the reads had slightly lower q scores
- based on this, set up an analysis to trim the reads using the fastp program
- ran the bash script fastp.sh for this
- looked at html files produced by fastp and compared pre/post trimming, things looked good
- ended setting up our read mapping of the trimmed and cleaned reads using 'bwa'


------    
<div id='id-section3'/>   

### Entry 3: 2023-09-18.
- learned about lab notebooks!
- looked at our SAM (SequenceAlignMent) files
- used sambamba to manipulate the files
    - we removed the duplicate reads
    - also indexed the alignment so it's easier to move through
- Used samtools and looked at a flagstat to see how well the mapping worked
    - looked at depth of coverage, which is the number of reads per site (command depth)
  
------    
<div id='id-section3'/>  

### Entry 4: 2023-09-20.
Today we finished our mapping statistics to assess our quality of our populations' results.
- this included the use of 'flagstat' and 'depth' of coverage
- talked about depth/coverage in detail
We are also going to look at Genotype Likelihood (GL) of the genotypes because you can't say for sure the second allele is one certain letter.
We're using ANGSD (has a website we can look at)
- can look at site frequency spectrum (SFS)
- and estimate nucleotide diversity and neutrality

------    
<div id='id-section3'/> 

### Entry 5: 2023-09-27.
Estimating Fst
- We do this by comparing each populations' Site Frequency Spectrums
- We compared MYPOP (our focal red spruce population, for me 2022) to Black Spruce
PCA and Admixture
- both of these tests are used to visualize the genetic structure in the entire set of sampless
- we used pcANGSD to put all of the allele frequencies into clusters that the individual might have relation or connection with
- assumed an eigenvalue of 2 (k=3) for this run but will explore more in homework assignment
- 

