---
editor_options: 
  markdown: 
    wrap: 72
---

# Transcriptomics Copepods Notebook

## Author: Megan O'Connor

### Affiliation: University of Vermont

### E-mail contact: [moconn19\@uvm.edu](mailto:moconn19@uvm.edu){.email}

### Start Date: 10/09/23

### End Date:

### Project Descriptions:

# Table of Contents:

-   [Entry 1: 2020-10-11](#id-section1)
-   [Entry 2: 2020-10-16](#id-section2)
-   [Entry 3: 2020-10-18](#id-section3)
-   [Entry 4: 2020-10-23](#id-section4)
-   [Entry 5: 2020-10-25](#id-section5)
-   [Entry 6: 2020-10-30](#id-section6)

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
- 
