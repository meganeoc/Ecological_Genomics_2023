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
- Used FastQC to analyze teh quality of the sequencing runs for one file


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


### Entry 3: 2023-XX-XX.
