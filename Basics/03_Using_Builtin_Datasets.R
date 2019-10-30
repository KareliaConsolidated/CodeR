# Using Builtin Datasets
?datasets

library(help = "datasets")

library(datasets)

# To Remove the Datasets Package
detach(package:datasets)

# To see a list of available datasets
data()

# For Information on a Specific Dataset
?airmiles

# To load a dataset from the package into the Workspace
data("airmiles") # Listed as "ts" for "time-series"

# To see the contents of the dataset
airmiles

# To see its "Structure"
str(airmiles)

# Fix Function makes it possible to edit the dataset in a new window
fix(airmiles)

# Now a Dataset that has rows and columns
?anscombe
data("anscombe")

# See its Structure
str(anscombe)

# See its data
anscombe

rm(list = ls()) # Clean Up
