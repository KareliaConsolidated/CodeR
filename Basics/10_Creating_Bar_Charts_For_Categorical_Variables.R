# Creating Bar Charts for Categorical Variables
# Help on Plots
?plot

# LOAD DATASETS PACKAGE
require("datasets")

# ONE ROW PER CASE
?chickwts

data("chickwts") # Load Data into Workspace

plot(chickwts$feed)

feeds <- table(chickwts$feed)
feeds

barplot(feeds) # Identical to plot(chickwts$feed)

# To Put the bars in Descending Order, add "order":

barplot(feeds[order(feeds, decreasing = TRUE)])

# Customize the Chart
par(oma = c(1,1,1,1)) # Set Outside margins: b,l,t,r
par(mar = c(4,5,2,1)) # Set Outside margins: b,l,t,r

barplot(feeds[order(feeds)],
        horiz = TRUE,
        las = 1, # las gives orientation of axis labels
        col = c("beige", "blanchedalmond", "bisque1","bisque2","bisque3","bisque4"),
        border = NA,
        main = "Frequencies of Different Feeds\nin chickwts Dataset", # \n = Line Break
        xlab = "Number of Choices")

rm(list = ls())