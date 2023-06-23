#Author: Devika; Date: 22/06/23; Purpose: Microarray analysis

# Set the working directory 
setwd("C:\\Users\\devik\\Desktop\\GSE344_RAW")

#load the library 
if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

BiocManager::install("affy")

library(affy)

# Reading .CEL data in a variable called eset
eset <- ReadAffy()

# Generate a box plot of raw data
boxplot(eset)