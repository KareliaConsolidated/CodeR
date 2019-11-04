# Creating Bar Charts for Categorical Variables
# Help on Plots
?plot

# LOAD DATASETS PACKAGE
require("datasets")

# ONE ROW PER CASE
?chickwts

data("chickwts") # Load Data into Workspace

plot(chickwts$feed)
