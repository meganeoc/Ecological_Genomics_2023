
library(RcppCNPy) # for reading python numpy (.npy) files

setwd("/Users/meganoconnor/Desktop/Ecological_Genomics_2023/Pop Genomics/results/homework")

list.files()

### read in selection statistics (these are chi^2 distributed)

s<-npyLoad("HWallRS_poly.selection.npy")

# convert test statistic to p-value
pval <- as.data.frame(1-pchisq(s,1))
names(pval) = "p_PC1"

# convert test statistic to p-value
pval <- as.data.frame(1-pchisq(s,1))
names(pval) = "p_PC1"

## read positions
p <- read.table("allRS_poly_mafs.sites",sep="\t",header=T, stringsAsFactors=T)
dim(p)

p_filtered = p[which(p$kept_sites==1),]
dim(p_filtered)

# How many sites got filtered out when testing for selection? Why?

## make manhattan plot
plot(-log10(pval$p_PC1),
  col=p_filtered$chromo,
  xlab="Position",
  ylab="-log10(p-value)",
  main="Selection outliers: pcANGSD e=2 (K3)")

# We can zoom in if there's something interesting near a position...

plot(-log10(pval$p_PC1[2e05:2.01e05]),
  col=p_filtered$chromo, 
  xlab="Position", 
  ylab="-log10(p-value)", 
  main="Selection outliers: pcANGSD e=2 (K3)")

# get the contig with the lowest p-value for selection
sel_contig <- p_filtered[which(pval==min(pval$p_PC1)),c("chromo","position")]
sel_contig

# get all the outliers with p-values below some cutoff
cutoff=1e-3   # equals a 1 in 5,000 probability
outlier_contigs <- p_filtered[which(pval<cutoff),c("chromo","position")]

outlier_contigs <- outlier_contigs[which(outlier_contigs$position>0),]

dim(outlier_contigs)

write.table(unique(outlier_contigs$chromo),
            "allRS_poly_PC1_outlier_contigs.txt", 
            sep="\t",
            quote=F,
            row.names=F,
            col.names=F)

# how many outlier loci < the cutoff?
dim(outlier_contigs)[1]

# how many unique contigs harbor outlier loci?
length(unique(outlier_contigs$chromo))

