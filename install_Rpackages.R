#! /usr/bin/env Rscript

options(install.packages.compile.from.source = "always")
chooseCRANmirror(ind=0)
packages <- c('devtools','IRkernel','BiocManager','tidyverse',"data.table", 
"futile.logger","ggplot2","optparse","plyr","readr","reshape2","scales","viridis","yaml")
install.packages(packages)

BiocManager::install("Biobase")
BiocManager::install("BiocGenerics")
BiocManager::install("sva")
BiocManager::install("DESeq2")
BiocManager::install("edgeR")
BiocManager::install("EBSeq")
devtools::install_github("jokergoo/ComplexHeatmap",upgrade_dependencies=FALSE)
IRkernel::installspec(name = 'ir404GD', displayname = 'R_4GD',user = FALSE)


