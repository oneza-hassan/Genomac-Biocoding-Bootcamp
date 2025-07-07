#restart the R session to clear any locked or loaded packages.
.rs.restartR()

#packages for Project Class
install.packages(c(
  "tidyverse",       # For data manipulation
  "matrixStats",     # For efficient computation of matrix statistics
  "cowplot",         # For combining multiple plots
  "tibble",          # Enhanced data frame structure
  "ggplot2",         # For creating visualizations
  "plotly",          # For creating plots
  "RColorBrewer",    # For generating color palettes for plots
  "gplots",          # For making plots
  "gameofthrones",   # For Game of Thrones-inspired color palettes
  "d3heatmap",       # For creating interactive heatmaps
  "gprofiler2",      # For functional enrichment analysis with g:Profiler
  "readxl"           # For reading Excel files
))

#Update BiocManager to latest version
BiocManager::install(version = "3.20")

# Install Bioconductor packages
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")  # For managing Bioconductor packages

BiocManager::install(c(
  "edgeR",           # For differential gene expression (DGE) analysis
  "limma",           # For linear modeling and DGE analysis
  "biomaRt",         # For accessing biological databases like Ensembl
  "org.Mm.eg.db",    # Annotation database for Mus musculus (mouse)
  "AnnotationDbi",   # For querying annotation databases
  "clusterProfiler", # For functional enrichment and pathway analysis
  "enrichplot"       # For visualizing enrichment analysis results
))

install.packages("tibble")

#Alternatives to gameofthrones
install.packages("RColorBrewer")

#Alternatives to d3heatmap:
BiocManager::install("ComplexHeatmap")

#list all the packages installed in R environment
installed.packages()[, "Package"]

#for more readable format with their library path
as.data.frame(installed.packages()[, c('Package', 'LibPath')])

#to check the total number of packages intalled in the library
nrow(installed.packages())



#import the packages
library(edgeR)        
library(limma)        
library(biomaRt)         
library(org.Mm.eg.db)  
library(AnnotationDbi)
library(clusterProfiler)
library(enrichplot)  
library(tidyverse)
library(matrixStats)
library(cowplot)
library(tibble)
library(ggplot2)  
library(tidyverse)
library(plotly)
library(RColorBrewer)
library(gplots)
library(ComplexHeatmap)
library(gprofiler2)
library(readxl)




#NOTE: DON'T RUN LINE 35
#Installing packages from directory

#install.packages("GSVA_1.52.3.tar.gz", repos = NULL, type = "source")

