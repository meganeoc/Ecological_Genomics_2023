# Structural Variation Notebook 

## Author: Megan O'Connor
### Affiliation: University of Vermont  
### E-mail contact: moconn19@uvm.edu


### Start Date: 11/06/2023
### End Date: 
### Project Descriptions:   





# Table of Contents:   
* [Entry 1: 2020-11-06](#id-section1)
* [Entry 2: 2020-11-08](#id-section2)
* [Entry 3: 2020-11-10](#id-section3)


------    
<div id='id-section1'/>   


### Entry 1: 2023-11-06.   
- focusing on variation across the genome
- different types 
  - deletions
  - insertions
  - duplications
  - inversions
  - translocations
- less than 50bp distinguishes small v large variations
- today focusing on large-scale

Sea Urchins!!
- 140 purple sea urchins from 7 populations
- experiencing diff levels of ph variability

Beginning Work
- chromosome number = NW_022145595.1
- made scripts and started running local PCA
------    
<div id='id-section2'/>   


### Entry 2: 2023-11-08.  
- chopping up genome eventually making super window
- 4499 mds_coords.csv
- i have no cluster groups in my PCA
Homework in HW Folder
1. going to compare different corners
  - 1 line of code change heheheheheh
  - in summarize_run file
2. what happens if we change the cutoff value
  - 1 number change
  - cd myscripts/, summarize run file mds.corners PROP change the number (make it smaller) about 158
3. Change window size (did 1000 SNPS in class)
  - 1 number/line of code
  - change the 1000, rerun local pca DO NOT DECREASE the number


------    
<div id='id-section3'/>   


### Entry 3: 2023-11-10.
- did all of the code running
- decided on 0.8 cutoff
- made all MDS plots 
- GO Enrichments for:
    - corner 1, 2, 3 cutoff 0.5
    - corner 1, 2, 3 cutoff 0.8
- need to find GO enrichment for fatty acid chains?
- just writing at this point
