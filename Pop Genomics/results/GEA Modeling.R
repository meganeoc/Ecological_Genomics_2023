library(RcppCNPy) # for reading python numpy (.npy) files

setwd("~/Desktop/Ecological_Genomics_2023/Pop Genomics/results/homework")

install.packages("rgdal")

list.files()

# REVISITING SELECTION OUTLIERS
### read in selection statistics (these are chi^2 distributed)

s<-npyLoad("allRS_poly.selection.npy")

# convert test statistic to p-value
pval <- as.data.frame(1-pchisq(s,1))
names(pval) = c("p_PC1","p_PC2")

## read positions
p <- read.table("allRS_poly_mafs.sites",sep="\t",header=T, stringsAsFactors=T)
dim(p)

p_filtered = p[which(p$kept_sites==1),]
dim(p_filtered)

# get all the outliers with p-values below some cutoff
cutoff=1e-3   

outliers_PC1 <- p_filtered[which(pval$p_PC1<cutoff),c("chromo","position")]

# how many outlier loci < the cutoff?
dim(outliers_PC1)[1]

# write them out to a file
write.table(outliers_PC1,
            "allRS_poly_outliers_PC1.txt", 
            sep=":",
            quote=F,
            row.names=F,
            col.names=F)

# GENETIC PCA AND GETTING COVARIATES
COV <- as.matrix(read.table("allRS_poly.cov"))

PCA <- eigen(COV)

data=as.data.frame(PCA$vectors)
data=data[,c(1:2)] # the second number here is the number of PC axes you want to keep

write.table(data,
            "allRS_poly_genPC1_2.txt",
            sep="\t",
            quote=F,
            row.names=F,
            col.names=F)

# GETTING THE BIOCLIM ENV VARIABLES
# You made need to use "install.packages" if you don't have some of the below libraries already
install.packages("FactoMineR")

library(raster)
library(FactoMineR)
library(factoextra)
library(corrplot)

setwd("")

bio <- getData("worldclim",var="bio",res=10)

coords <- read.csv("https://www.uvm.edu/~kellrlab/forClass/colebrookSampleMetaData.csv", header=T)

# The chunk below refers to your bamlist file that you transferred during last week's PCA/admixture analysis.  It should be the same one you want to use here -- if your sample list for analysis changes in the future, you'll need a different bamlist!

angsd_coords_clim <- read.csv("angsd_coords_clim.csv", header=T) 

  names <- read.table("allRSe2_bam.list")
names <- unlist(strsplit(basename(as.character(names[,1])), split = ".sorted.rmdup.bam"))
split = strsplit(names, "_")
pops <- data.frame(names[1:95], do.call(rbind, split[1:95]))
names(pops) = c("Ind", "Pop", "Row", "Col")


angsd_coords <- merge(pops, coords, by.x="Ind", by.y="Tree")

points <- SpatialPoints(angsd_coords[c("Longitude","Latitude")])

clim <- extract(bio,points)

angsd_coords_clim <- cbind.data.frame(angsd_coords,clim)
str(angsd_coords_clim)

# Make the climate PCA:

clim_PCA = PCA(angsd_coords_clim[,15:33], graph=T)

# Get a screeplot of cliamte PCA eigenvalues

fviz_eig(clim_PCA)

# What is the climate PCA space our red spruce pops occupy?

fviz_pca_biplot(clim_PCA, 
                geom.ind="point",
                col.ind = angsd_coords_clim$Latitude, 
                gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"),
                title="Climate PCA (Bioclim)",
                legend.title="Latitude")

# Which variables show the strongest correlation on the first 2 climate PC axes?

dimdesc(clim_PCA)[1:2]

##Exporting bioclim
# Replace "XX" with your bio variable most significant on climate PC1:

write.table(scale(angsd_coords_clim["bio14"]),
            "allRS_bio4.txt",
            sep="\t",
            quote=F,
            row.names = F,
            col.names=F)


# Replace "YY" with your bio variable most significant on climate PC2:  

write.table(scale(angsd_coords_clim["bio2"]),
            "allRS_bio2.txt",
            sep="\t",
            quote=F,
            row.names = F,
            col.names=F)
