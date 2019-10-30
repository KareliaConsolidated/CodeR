# Taking a First Look at the Interface
# SHIFT + CTRL + C to add or remove comments

8 + 5 # Basic Math

1:250 # Prints numbers 1 to 100 across several lines

print("Hello World") # Prints "Hello World" in Console

# Variables
x <- 1:5 # Put the numbers 1-5 in the variable x
x # Displays the values in x

y <- c(6, 7, 8, 9, 10) # Put the numbers 6-10 in y
y

a <- b <- c <- 3 # Multiple Assignments

# Vector Math
x
y
x + y # Adds corresponsing elements in x and y
x * 2 # Multiplies each element in x by 2

# Google's R Style Guide
browseURL("https://google.github.io/styleguide/Rguide.html")

# Clean Up
rm(x) # Remove and Object from Workspace
rm(a, b) # Remove more than one
rm(list = ls()) # Clean entire Workspace