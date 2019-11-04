# A list in R is similar to your to-do list at work or school: the different items on that list most likely differ in length, characteristic, and type of activity that has to be done.

# A list in R allows you to gather a variety of objects under one name (that is, the name of the list) in an ordered way. These objects can be matrices, vectors, data frames, even other lists, etc. It is not even required that these objects are related to each other in any way.

# You could say that a list is some kind super data type: you can store practically any piece of information in it!

# Vector with numerics from 1 up to 10
my_vector <- 1:10 

# Matrix with numerics from 1 up to 9
my_matrix <- matrix(1:9, ncol = 3)

# First 10 elements of the built-in data frame mtcars
my_df <- mtcars[1:10,]

# Construct list with these different elements:
my_list <- list(my_vector, my_matrix, my_df)
my_list

# Adapt list() call to give the components names
my_list <- list(vec = my_vector, mat = my_matrix, df = my_df)

# Print out my_list
my_list

# Finish the code to build shining_list
shining_list <- list(moviename = mov, actors = act, reviews = rev)

# Selecting elements from a list
# Your list will often be built out of numerous elements and components. Therefore, getting a single element, multiple elements, or a component out of it is not always straightforward.

# One way to select a component is using the numbered position of that component. For example, to "grab" the first component of shining_list you type

# shining_list[[1]]

# A quick way to check this out is typing it in the console. Important to remember: to select elements from vectors, you use single square brackets: [ ]. Don't mix them up!

# You can also refer to the names of the components, with [[ ]] or with the $ sign. Both will select the data frame representing the reviews:

# shining_list[["reviews"]]
# shining_list$reviews
# Besides selecting components, you often need to select specific elements out of these components. For example, with shining_list[[2]][1] you select from the second component, actors (shining_list[[2]]), the first element ([1]). When you type this in the console, you will see the answer is Jack Nicholson.

# Print out the vector representing the actors
shining_list[['actors']]

# Print the second element of the vector representing the actors
shining_list[['actors']][2]

# We forgot something; add the year to shining_list
shining_list_full <- c(shining_list, year = 1980)

# Have a look at shining_list_full
str(shining_list_full)
