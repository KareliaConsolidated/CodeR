# What's a data frame?
# You may remember from the chapter about matrices that all the elements that you put in a matrix should be of the same type. Back then, your data set on Star Wars only contained numeric elements.
# 
# When doing a market research survey, however, you often have questions such as:
# 
# 'Are you married?' or 'yes/no' questions (logical)
# 'How old are you?' (numeric)
# 'What is your opinion on this product?' or other 'open-ended' questions (character)
# ...
# The output, namely the respondents' answers to the questions formulated above, is a data set of different data types. You will often find yourself working with data sets that contain different data types instead of only one.
# 
# A data frame has the variables of a data set as columns and the observations as rows. This will be a familiar concept for those coming from different statistical software packages such as SAS or SPSS.

mtcars

# Call head() on mtcars
head(mtcars)

# Call tail() on mtcars
tail(mtcars)

# Investigate the structure of mtcars
str(mtcars)

# Creating a data frame

# Since using built-in data sets is not even half the fun of creating your own data sets, the rest of this chapter is based on your personally developed data set. Put your jet pack on because it is time for some space exploration!
  
# As a first goal, you want to construct a data frame that describes the main characteristics of eight planets in our solar system. According to your good friend Buzz, the main features of a planet are:
  
# The type of planet (Terrestrial or Gas Giant).
# The planet's diameter relative to the diameter of the Earth.
# The planet's rotation across the sun relative to that of the Earth.
# If the planet has rings or not (TRUE or FALSE).
# After doing some high-quality research on Wikipedia, you feel confident enough to create the necessary vectors: name, type, diameter, rotation and rings; these vectors have already been coded up on the right. The first element in each of these vectors correspond to the first observation.

# You construct a data frame with the data.frame() function. As arguments, you pass the vectors from before: they will become the different columns of your data frame. Because every column has the same length, the vectors you pass should also have the same length. But don't forget that it is possible (and likely) that they contain different types of data.

# Definition of vectors
name <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune")
type <- c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet", 
          "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883)
rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67)
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)

# Create a data frame from the vectors
planets_df <- data.frame(name, type, diameter, rotation, rings)
planets_df

# Check the structure of planets_df
str(planets_df)

#=================# Selection of data frame elements #======================#
# Print out diameter of Mercury (row 1, column 3)
planets_df[1,3]

# Print out data for Mars (entire fourth row)
planets_df[4,]

# Select first 5 values of diameter column
planets_df[1:5,"diameter"]

# Use the $ sign to select the rings variable from planets_df. Store the vector that results as rings_vector.
# Select the rings variable from planets_df
rings_vector <- planets_df$rings

# Print out rings_vector
rings_vector

# Adapt the code to select all columns for planets with rings
planets_df[rings_vector, ]

# Now, let us move up one level and use the function subset(). You should see the subset() function as a short-cut to do exactly the same as what you did in the previous exercises.

# subset(my_df, subset = some_condition)
# The first argument of subset() specifies the data set for which you want a subset. By adding the second argument, you give R the necessary information and conditions to select the correct subset.

# The code below will give the exact same result as you got in the previous exercise, but this time, you didn't need the rings_vector!

# subset(planets_df, subset = rings)

# Select planets with diameter < 1
subset(planets_df, subset = diameter < 1)

# Sorting
# Making and creating rankings is one of mankind's favorite affairs. These rankings can be useful (best universities in the world), entertaining (most influential movie stars) or pointless (best 007 look-a-like).

# In data analysis you can sort your data according to a certain variable in the data set. In R, this is done with the help of the function order().

# order() is a function that gives you the ranked position of each element when it is applied on a variable, such as a vector for example:

# a <- c(100, 10, 1000)
# order(a)
# [1] 2 1 3
# 10, which is the second element in a, is the smallest element, so 2 comes first in the output of order(a). 100, which is the first element in a is the second smallest element, so 1 comes second in the output of order(a).

# This means we can use the output of order(a) to reshuffle a:

# > a[order(a)]
# [1]   10  100 1000

# Call order() on planets_df$diameter (the diameter column of planets_df). Store the result as positions.
# Use order() to create positions
positions <-  order(planets_df$diameter)

# Use positions to sort planets_df
planets_df[positions,]