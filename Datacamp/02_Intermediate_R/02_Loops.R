# While Loop
ctr <- 0
while(ctr <= 7) {
  print(paste("ctr is set to ", ctr))
  ctr <- ctr + 1
}

# Initialize the speed variable
speed <- 64

# Code the while loop
while (speed > 30) {
  print("Slow down!")
  speed <- speed -7
}

# Print out the speed variable
speed

# Initialize the speed variable
speed <- 64

# Extend/adapt the while loop
while (speed > 30) {
  print(paste("Your speed is",speed))
  if (speed > 48) {
    print("Slow down big time!")
    speed = speed - 11
  } else {
    print("Slow down!")
    speed = speed - 6
  }
}

# Initialize the speed variable
speed <- 88

while (speed > 30) {
  print(paste("Your speed is", speed))
  
  # Break the while loop when speed exceeds 80
  if (speed > 80) {
    break
  }
  
  if (speed > 48) {
    print("Slow down big time!")
    speed <- speed - 11
  } else {
    print("Slow down!")
    speed <- speed - 6
  }
}

# Initialize i as 1 
i <- 1

# Code the while loop
while (i <= 10) {
  print(3 * i)
  if ( 3*i %% 8 == 0) {
    break
  }
  i <- i + 1
}

# The linkedin vector has already been defined for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)

# Loop version 1
for (li in linkedin) {
  print(li)
}

# Loop version 2
for (i in 1:length(linkedin)) {
  print(linkedin[i])
}

# The nyc list is already specified
nyc <- list(pop = 8405837, 
            boroughs = c("Manhattan", "Bronx", "Brooklyn", "Queens", "Staten Island"), 
            capital = FALSE)

# Loop version 1
for (ny in nyc) {
  print(ny)
}

# Loop version 2
for (i in 1:length(nyc)){
  print(nyc[[i]])
}

# Constructing tic-tac-toe matrix
ttt <- matrix(c("O", "NA", "X", "NA", "O", "O", "X", "NA", "X"), 
              nrow = 3, 
              byrow = TRUE)

# define the double for loop
for (i in 1:nrow(ttt)) {
  for (j in 1:ncol(ttt)) {
    print(paste("On row", i, "and column", j, "board contains", ttt[i,j]))
  }
}


# The linkedin vector has already been defined for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)

# Code the for loop with conditionals
for (li in linkedin) {
  if (li > 10) {
    print("You're popular!")
  } else {
    print("Be more visible!")
  }
  print(li)
}

# Next, you break it
# In the editor on the right you'll find a possible solution to the previous exercise. The code loops over the linkedin vector and    prints out different messages depending on the values of li.
# 
# In this exercise, you will use the break and next statements:
# 
# The break statement abandons the active loop: the remaining code in the loop is skipped and the loop is not iterated over anymore.
# The next statement skips the remainder of the code in the loop, but continues the iteration.

# The linkedin vector has already been defined for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)

# Adapt/extend the for loop
for (li in linkedin) {
  if (li > 10) {
    print("You're popular!")
  } else {
    print("Be more visible!")
  }
  
  # Add if statement with break
  if (li > 16) {
    print("This is ridiculous, Im'm outta here!")
    break
  }
  
  # Add if statement with next
  if(li < 5) {
    print("This is too embarrassing!")
    next
  }
  
  print(li)
}

# Pre-defined variables
rquote <- "r's internals are irrefutably intriguing"
chars <- strsplit(rquote, split = "")[[2]]
