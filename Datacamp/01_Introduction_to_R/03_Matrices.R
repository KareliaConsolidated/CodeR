# What's a matrix?
# In R, a matrix is a collection of elements of the same data type (numeric, character, or logical) arranged into a fixed number of rows and columns. Since you are only working with rows and columns, a matrix is called two-dimensional.

# You can construct a matrix in R with the matrix() function. Consider the following example:
  
matrix(1:9, byrow = TRUE, nrow = 3)

# It is now time to get your hands dirty. In the following exercises you will analyze the box office numbers of the Star Wars franchise. May the force be with you!

# Create box_office
box_office <- c(new_hope, empire_strikes, return_jedi)

# Construct star_wars_matrix
star_wars_matrix <- matrix(box_office, byrow=TRUE, nrow=3)

# Similar to vectors, you can add names for the rows and the columns of a matrix
# 
# rownames(my_matrix) <- row_names_vector
# colnames(my_matrix) <- col_names_vector

# Vectors region and titles, used for naming
region <- c("US", "non-US")
titles <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")

# Name the columns with region
colnames(star_wars_matrix) <- region

# Name the rows with titles
rownames(star_wars_matrix) <- titles

# Print out star_wars_matrix
star_wars_matrix

# To calculate the total box office revenue for the three Star Wars movies, you have to take the sum of the US revenue column and the non-US revenue column.
box_office <- c(460.998, 314.4, 290.475, 247.900, 309.306, 165.8)
star_wars_matrix <- matrix(box_office, nrow = 3, byrow = TRUE,
                           dimnames = list(c("A New Hope", "The Empire Strikes Back", "Return of the Jedi"), 
                                           c("US", "non-US")))

# Calculate worldwide box office figures
worldwide_vector <- rowSums(star_wars_matrix)
worldwide_vector

# Adding a column for the Worldwide box office
# In the previous exercise you calculated the vector that contained the worldwide box office receipt for each of the three Star Wars movies. However, this vector is not yet part of star_wars_matrix.

# You can add a column or multiple columns to a matrix with the cbind() function, which merges matrices and/or vectors together by column. For example:
  
# big_matrix <- cbind(matrix1, matrix2, vector1 ...)
# Bind the new variable worldwide_vector as a column to star_wars_matrix
all_wars_matrix <- cbind(star_wars_matrix,worldwide_vector)
box_office2 <- c(474.5, 552.5, 310.7, 338.7, 380.3, 468.5)
star_wars_matrix2 <- matrix(box_office2, nrow = 3, byrow = TRUE,
                           dimnames = list(c("The Phantom Menace", "Attack of the Clones", "Revenge of the Sith"), 
                                           c("US", "non-US")))

# Combine both Star Wars trilogies in one matrix
all_wars_matrix <- rbind(star_wars_matrix,star_wars_matrix2)
all_wars_matrix

# Total revenue for US and non-US
total_revenue_vector <- colSums(all_wars_matrix)

# Print out total_revenue_vector
total_revenue_vector

# Selection of matrix elements

# Similar to vectors, you can use the square brackets [ ] to select one or multiple elements from a matrix. Whereas vectors have one dimension, matrices have two dimensions. You should therefore use a comma to separate the rows you want to select from the columns. For example:
  
# my_matrix[1,2] selects the element at the first row and second column.
# my_matrix[1:3,2:4] results in a matrix with the data on the rows 1, 2, 3 and columns 2, 3, 4.
# If you want to select all elements of a row or a column, no number is needed before or after the comma, respectively:
  
# my_matrix[,1] selects all elements of the first column.
# my_matrix[1,] selects all elements of the first row.

# Back to Star Wars with this newly acquired knowledge! As in the previous exercise, all_wars_matrix is already available in your workspace.

# Select the non-US revenue for all movies
non_us_all <- all_wars_matrix[,2]

# Average non-US revenue
mean(non_us_all)

# Select the non-US revenue for first two movies
non_us_some <- all_wars_matrix[1:2,2] 

# Average non-US revenue for first two movies
mean(non_us_some)

# Estimate the visitors
visitors <- all_wars_matrix / 5

# Print the estimate to the console
visitors

# Great! What do these results tell you? A staggering 92 million people went to see A New Hope in US theaters!
box_office_price <- c(5.0, 5.0, 6.0, 6.0, 7.0, 7.0, 4.0, 4.0, 4.5, 4.5, 4.9, 4.9)
ticket_prices_matrix <- matrix(box_office_price, nrow = 6, byrow = TRUE,
                               dimnames = list(c("A New Hope", "The Empire Strikes Back", "Return of the Jedi","The Phantom Menace", "Attack of the Clones", "Revenge of the Sith"), 
                                               c("US", "non-US")))

# Divide all_wars_matrix by ticket_prices_matrix to get the estimated number of US and non-US visitors for the six movies. Assign the result to visitors.
# From the visitors matrix, select the entire first column, representing the number of visitors in the US. Store this selection as us_visitors.
# Calculate the average number of US visitors; print out the result.

# all_wars_matrix and ticket_prices_matrix are available in your workspace
all_wars_matrix
ticket_prices_matrix

# Estimated number of visitors
visitors <- all_wars_matrix/ticket_prices_matrix

# US visitors
us_visitors <- visitors[,1]

# Average number of US visitors
mean(us_visitors)