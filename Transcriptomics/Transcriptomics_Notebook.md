# Transcriptomics Copepods Notebook 

## Author: Megan O'Connor
### Affiliation: University of Vermont
### E-mail contact: moconn19@uvm.edu


### Start Date: 10/09/23
### End Date: 
### Project Descriptions:   





# Table of Contents:   
* [Entry 1: 2020-10-11](#id-section1)
* [Entry 2: 2020-10-16](#id-section2)
* [Entry 3: 2020-10-18](#id-section3)


------    
<div id='id-section1'/>   


### Entry 1: 2023-10-11.   
#### What could we do with the experimental information?
Seems like a simple experiment, but there are tons of ways to explore it
- Effect of environment on levels of G.E.
    - is there a unique response to the combined treatment?
    - what are the functional categories of DEGs?
- Signature of physiological adaptation
    - decline initially in new environment, get better, then die again
    - in F2, F4, F11
    - across generations within the environment
    - across environments within a generation
- Interaction between env. condition and generation

#### Coding
My Sample Group: AA_F0 (Ambient AA)(Nreps3)
- Good quality scores, most Fs
- Cleaned data using FastP 0.23.4
  - went into "fastp" directory in myresults
- recorded stats from clean files including reads before/after filtering, and percentage reads passed filters, put them in the google doc

------    
<div id='id-section2'/>   


### Entry 2: 2023-10-16.  
Reviewing Illumina Data Quality
- A good “rule of thumb’ for RNAseq data when working with a diploid eukaryote is about ~20M reads per sample.
- on average kept about 98% of the data
- ~45mil reads per sample
Trinity for de novo transcriptome assembly
- more data generally = more contigs, more transcripts, more variation with Trinity
- Median contig length=430
- BUSCO wasn't working, couldn't do actual analysis
Mapped reads using Salmon
- looked at mapping rates!

------    
<div id='id-section3'/>   


### Entry 3: 2023-XX-XX.