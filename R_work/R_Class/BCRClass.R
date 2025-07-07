
#addition
#addition
6+9
6+9

#subtraction
9-5

#division
14/2
20/2

#multiplication
4*7
4*10

#assigning values to variable
genome_length <- 20000
genome = 10
rm(genome)
ls()
genome=1
ls()
genome
rm(genome)
ls()
values <- c(3,2)
head <- values[3]
tail <- values[2]

# Check variables 
print(head)
print(tail)
#rm(head, genome_length)
ls()


genome_length <- 20000

genome_length

#set another variable
multiplication_result <- 4*10
multiplication_result
ls()
genome_length / multiplication_result
gl6 <- 6*genome_length

up_genes <- "BRCA1"
(up_genes2 <- "NPY")
up_genes

(genome_lengthx5000 <- genome_length *5000)


#basic functions
#functions

sqrt(17)
sqrt(100)
(sr100 <- sqrt(100))
(glsqrt <- sqrt(genome_length))

#approximation
round(1.35, 1)

(GC_content <-  round(5.7532456,3))

round(3, 5.7532456)

round(digits = 3, x=5.7262373)

#vector: used to assign many values/ features in variable
#vector stores different values of same datatype
(e_coli_k12 <- c(56, 2, 45, 89, 23, 47))
(e_coli_k12 <- c(56, 2, 45, 89, 23, 47, 5000))
e_coli_k12

(degs <- c("NPY", "CALB", "SST", "GAD1", "CALCA"))

#check for the value class
class(e_coli_k12)
class(degs)

#check length
length(degs)
length(sr100)

(len <- length(e_coli_k12))


#check the attribute of variable
str(degs)

#appending values to vector
degs

(updated_degs<- c(degs, "PARK", "APOE"))
(updated_degs2<- c( "PARK", "APOE", degs))

#creating a subset of vectors
(gene5 <- updated_degs2[5])

(gene5_6 <- updated_degs2[c(5,6)])


#subracting the values
(minusgene5 <- updated_degs2[-6])

minusgene5
updated_degs2
(minus3_4 <- updated_degs[c(-3,-4)])
(minus3_4 <- updated_degs[-c(3,4)])


#conditional subsetting

e_coli_k12
e_coli_k12[c(FALSE, TRUE, FALSE, FALSE, TRUE, TRUE)]


#subsetting with comparison operator & |
e_coli_k12[e_coli_k12 > 40]
e_coli_k12[e_coli_k12 < 40]
e_coli_k12 >40
e_coli_k12[e_coli_k12 <45 | e_coli_k12 ==89]
e_coli_k12[e_coli_k12 <45 & e_coli_k12== 20+3]









# Ensure the library directory exists and is writable
file.exists("E:/R-4.4.2/library")
file.access("E:/R-4.4.2/library", mode = 2)

#to Ensure All Future Packages Are Installed in desired library (i am setting in E drive)
file.exists("~/.Rprofile")
file.edit("~/.Rprofile")
file.show("~/.Rprofile")

# Check library paths
.libPaths()

#to Verify Rtools Installation:
Sys.which("make")



# Create and set a new temporary directory to be recognized by R
tempdir <- "E:/Rtmp"
dir.create(tempdir, showWarnings = FALSE)
Sys.setenv(TMPDIR = tempdir, TEMP = tempdir, TMP = tempdir)
# Create a temporary file and check its location
temp_file <- tempfile()
print(temp_file)
sessionInfo()
normalizePath("~") #return home directory where the.Renviron file is stored











#install packages
install.packages("dplyr")
install.packages("ggplot2")
install.packages("tidyverse")
install.packages("tidyr")
install.packages("BiocManager") 

#remove packages
remove.packages("dplyr")
remove.packages("ggplot2")
remove.packages("tidyverse")
remove.packages("tidyr")
remove.packages("BiocManager")

# List installed packages in the specified library path
dir("E:/R-4.4.2/library")

#load the packages
library(dplyr)
library(ggplot2)
library(tidyverse)
library(tidyr)
library(BiocManager)






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
  "org.Mm.eg.db",    # Annotation database for Mus musculus (mouse) this is organism specific (for genomac project we are working with mouse data)
                     #for human data set search on google human org db data or like human bioconductor annotation package or database and you will find org.Hs.eg.db on bioconductor
                     #if you are working with the non model organism then there will be difficulty downloading the annotation package you might need to use R cloud
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

#gives the list of packages installed
rownames(installed.packages())

#for more readable format with their library path
as.data.frame(installed.packages()[, c('Package', 'LibPath')])

#to check the total number of packages intalled in the library
nrow(installed.packages())






#NOTE: DON'T RUN LINE 35
#Installing packages from directory

#install.packages("GSVA_1.52.3.tar.gz", repos = NULL, type = "source")





# Replace 'packageName' with the actual name of the package you want to check
if ("readxl" %in% rownames(installed.packages())) {
  print("The package is installed.")
} else {
  print("The package is not installed.")
}

# Replace 'packageName' with the actual name of the package you want to find
find.package("readxl")






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




#load the data
setwd("E:\\biocoding\\R_work\\R_Project class") #this is to set the working directory. now R will be able to fetch the files and data from this directory

#reading data from folder
rnadata <- read_excel("mouse_data.xlsx")

#to open up the file and see the content in R environment
view(rnadata)

#extract a particular column in the table
head(rnadata$Name, 10)

#check dimension of the data
dim(rnadata) 

#check structure
str(rnadata)

#check no of rows
nrow(rnadata)

#check no of columns
ncol(rnadata)

#check first 6 rows
head(rnadata)

head(rnadata, 6)

#check last 6 rows
tail(rnadata)

#summary of our dataframe
summary(rnadata)

#create new column
rnadata$Control1 <- rnadata$`MPar1:COUNT` #these commands will append the MPar1:COUNT entries to our new column variable that is Control1
rnadata$Control2 <- rnadata$`MPar2:COUNT`
rnadata$Control3 <- rnadata$`MPar3:COUNT`
rnadata$Treatment1 <- rnadata$`MRR1:COUNT`
rnadata$Treatment2 <- rnadata$`MRR2:COUNT`
rnadata$Treatment3 <- rnadata$`MRR3:COUNT`

#run without pipe function
rnadata2 <- select(rnadata, Gene, Control1, Control2,
                   Control3, Treatment1, Treatment2, Treatment3) #You don't need to specify the data frame inside the select function because the pipe takes care of that as it doesnot have a special charactor like : in`MPar1:COUNT`

#to extract the columns you need, you can use the pipe function
rnadata2 <- rnadata %>%
  select(Gene, Control1, Control2,
         Control3, Treatment1, Treatment2, Treatment3) #in the selectfunction during piping you do not pass the first argument as the data file that you are working with because you have already mentioned the data file before the piping sybmol


#to open up the file and see the content in R environment
view(rnadata2)

#Preparing count matrix data frame
myCounts <- as.data.frame(rnadata2) #CHANGING VARIABLES TO DATABASE

#Setting column order
column_order <- c("Control1", "Control2",
                  "Control3", "Treatment1", "Treatment2", "Treatment3")

#checking row names
rownames(myCounts)

#check the names of the columns
names(myCounts)

#change the name of the column by SUBSETTING
names(myCounts)[names(myCounts)=="Gene_name"] <- "Gene_ID"

# names(myCounts)[names(myCounts)=="Control1"] <- "Untreated1"

names(myCounts)[names(myCounts)=="Untreated1"] <- "Control1"

#right now rownames have the sequential integers (by default)
rownames(myCounts)

#Setting the Gene_ID as the row name (duplicates rownames are not allowed)
rownames(myCounts) <- myCounts$Gene_ID


#data[x,y] x means row and y means column
myCounts[7,5] #the values at row 7 in column 5
myCounts[ ,5] #all the values (rows)of column 5
myCounts[5, ] #all the values of row 5


#lets say a variable bag has multiple values
bag <- c("book", "pen", "luunchbox")
#to remove the first element of the bag
bag[-3]

#remove the Gene_ID column because the IDs are set as the rownames
myCountsx <- myCounts[ ,1] 



