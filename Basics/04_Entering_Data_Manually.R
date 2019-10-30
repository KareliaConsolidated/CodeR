# Entering Data Manually

# Create Sequential Data
x1 <- 0:10 # Assigns number 0 through 10 to x1
x1 # Prints Contents of x1 in Console

x2 <- 10:0 # Assigns number 10 through 0 to x2
x2

x3 <- seq(10) # Counts from 1 to 10
x3
?seq

x4 <- seq(30, 0, by = -3) # Counts down by 3

# Manually Enter Data
x5 <- c(5, 4, 1, 6, 7, 2, 2, 3, 2, 8) # Concatenate


x6 <- scan() # After running this command, go to console
# Hit return after each number
# Hit return twice to stop
x6
?scan

ls() # List Objects (Same as Workspace Viewer)

rm(list = ls()) # Clean Up
# CTRL + L to Clean Up the Console