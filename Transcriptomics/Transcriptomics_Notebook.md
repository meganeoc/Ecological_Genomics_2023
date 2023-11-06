---
editor_options: 
  markdown: 
    wrap: 72
---

# Transcriptomics Notebook

## Author: Megan O'Connor

### Affiliation: University of Vermont

### E-mail contact: [moconn19\@uvm.edu](mailto:moconn19@uvm.edu){.email}

### Start Date: 10/09/23

### End Date: 11/07/23

### Project Descriptions:

# Table of Contents:

-   [Entry 1: 2023-10-11](#id-section1)
-   [Entry 2: 2023-10-16](#id-section2)
-   [Entry 3: 2023-10-18](#id-section3)
-   [Entry 4: 2023-10-23](#id-section4)
-   [Entry 5: 2023-10-25](#id-section5)
-   [Entry 6: 2023-10-30](#id-section6)
-   [Entry 7: 2023-11-01](#id-section7)
-   [Entry 8: 2023-11-03](#id-section8)
-   [Entry 9: 2023-11-05](#id-section9)

<div id='id-section2'/>
DAY 3
### Entry 2: 2023-10-16. Reviewing Illumina Data Quality 
- A good "rule of thumb' for RNAseq data when working with a diploid eukaryote is about \~20M reads per sample. 
- on average kept about 98% of the data 
- \~45mil reads per sample Trinity for de novo transcriptome assembly 
- more data generally = more contigs, more transcripts, more variation with Trinity 
- Median contig length=430 
- BUSCO wasn't working, couldn't do actual analysis Mapped reads using Salmon 
- looked at mapping rates!

------------------------------------------------------------------------

<div id='id-section3'/>

### Entry 3: 2023-10-18.
DAY 4
-   Checked Salmon Files, looked at ahud_mapping.txt
    -   What factors could affect their quality?
-   Started analyzing the gene expression data using DESeq2
    -   Imported Data
    -   Looked at reads per each sample/average reads among all of them
        (graph)
-   You can change the dds to other things (we debated between 15 and
    30)
-   have to install commandline tools, did not get past dds ask for help
    after downloading

------------------------------------------------------------------------

<div id='id-section3'/>

### Entry 4: 2023-10-23.
DAY 5
-   We're about to do DESeq but mine still isn't working :) working on
    installing packages but can't run anything else - \>
    install.packages("DESeq2") Warning in install.packages : package
    'DESeq2' is not available for this version of R - All packages
    failed to install completely
-   dropped row 55 to 10 counts, can change it around 10-15 is standard
      - make sure you drop your counts at each dds reset (like line 292)
-   PCA plots to visualize
-   TREATMENT NAME CHANGES -AA = AM (Ambient) -AH = OA (Ocean
    Acidification) -HA = OW (Ocean Warming) -HH = OWA (Ocean
    Warming/Acidification)
-   Order function shows us the most significant genes, copy into script
    when able, grab summary results as well
- shift command c is commenting out
- volcano plot, venn diagram as well
- deg = differentially expressed genes
- 
------------------------------------------------------------------------

<div id='id-section3'/>

### Entry 5: 2023-10-25.
- Transferred trait data to results
Work through WGCNA (Weighted Gene Coexpression Network Analysis)
    - looks for clusters with similar expression patterns, calls them modules          and gives them different colors, almost similar to PCAs
    - Each module has an eigengene,
    - processing data table
    - higher R2 equals tighter the modules have to be, can optimize
    - agnostic of what metadata our samples have, ignores treatment groups if         the expression patterns are similar
    - THEN we give it all of the METADATA and then ask for a correlation              between module and a factor (ie egg production rate) biological               context
- Imported Counts Matrix
- signed means it cares whether upregulated or downregulated, unsigned is absolute value
------------------------------------------------------------------------

<div id='id-section3'/>

### Entry 6: 2023-10-30.
- Talked about what we are missing doing in terms of bioinformatics
    - parameter space
- can't find function "goodSamplesGenes" have to talk to Steve or something about it
- WGCNA just started working though so going to go through scripts from the beginning and hope it resolves itself

------------------------------------------------------------------------

<div id='id-section3'/>

### Entry 7: 2023-11-01.
HOMEWORK OPTIONS
1. look at how filtration of de novo assembly can affect results (rerun Salmon)
2. Filtration based on read depth, come up with new parameters (rerun DESeq stuff about depth)
3. WGCNA Power Thresholds, look at how this affects genes per module, strength of correlation, number of modules, (xtra credit do GO enrichment)
LAST 2 ARE BIOLOGICAL QUESTIONS (Using parameters we already have)
4. focus on 2 treatment groups but 3 of the generations and pull out specific contrasts and compare results, GO Enrichment
5. look at ALL 4 groups, comparing between F0 F4 subset DESeq by generation

Gene Ontology!

------------------------------------------------------------------------

<div id='id-section3'/>

### Entry 8: 2023-11-03.
- chose my question (3)
- deciding to address soft power thresholds of 6 (original), 7, 8
- started writing bioinformatics pipeline

------------------------------------------------------------------------

<div id='id-section3'/>

### Entry 9: 2023-11-05.

