# Importing Data

# EXCEL FILES
# Don't Do It !!
browseURL("http://cran.r-project.org/doc/manuals/R-data.html#Reading-Excel-spreadsheets")

# TEXT FILES
# Load a spreadsheet that has been saved as tab-delimited text file
# Need to give complete address to file
# This command gives an error on missing data, but works on complete data.
# "header = TRUE" means the first line is a header
trends.txt <- read.table("C:/Users/Anubhav/Desktop/R/GoogleTrends.txt",header = TRUE)
?read.table

# This works with missing data by specifying the separator: \t is for tabs, sep="," for commas. R converts missing to "NA"
trends.txt <- read.table("C:/Users/Anubhav/Desktop/R/GoogleTrends.txt", header = TRUE, sep = "\t")
str(trends.txt) # This gives structure of object 
View(trends.txt)

# CSV FILES
# Don't have to specify delimiters for missing data, because CSV means "Comma Separated Values"
trends.csv <- read.csv("C:/Users/Anubhav/Desktop/R/GoogleTrends.csv", header = TRUE)
View(trends.csv)

rm(list=ls()) # Clean Up
