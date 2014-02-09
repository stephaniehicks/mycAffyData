library(affy)

# Load data from GEO
library(GEOquery)
gds <- getGEO("GSE40784")

##########################
###### Affymetrix Samples
##########################

## Raw CEL.gz files
rawFiles <- as.character(pData(gds[[2]])$supplementary_file)

setwd("~/git-projects/mycExpressionYoung/inst/extdata/affy")
mycData <- ReadAffy()
pData(mycData) <- pData(gds[[2]])

setwd("~/git-projects/mycExpressionYoung")
save(mycData, file="data/mycData.rda")
