# Vectors are one-dimension arrays that can hold numeric data, character data, or logical data. In other words, a vector is a simple tool to store data. For example, you can store your daily gains and losses in the casinos.
numeric_vector <- c(1, 10, 49)
character_vector <- c("a", "b", "c")

# Complete the code for boolean_vector
boolean_vector <- c(TRUE, FALSE, TRUE)

# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <-  c(-24, -50, 100, -350, 10)

# You can give a name to the elements of a vector with the names() function.

# Assign days as names of poker_vector
names(poker_vector) <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

# Assign days as names of roulette_vector
names(roulette_vector) <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

# Assign the names of the day to roulette_vector and poker_vector
names(poker_vector) <-   days_vector
names(roulette_vector) <- days_vector

# You want to find out the following type of information:
#   
#   How much has been your overall profit or loss per day of the week?
#   Have you lost money over the week in total?
#   Are you winning/losing money on poker or on roulette?

# It is important to know that if you sum two vectors in R, it takes the element-wise sum. For example, the following three statements are completely equivalent:
#   
# c(1, 2, 3) + c(4, 5, 6)
# c(1 + 4, 2 + 5, 3 + 6)
# c(5, 7, 9)

# The total daily profit is the sum of the profit/loss you realized on poker per day, and the profit/loss you realized on roulette per day.

# Assign to total_daily how much you won/lost on each day
total_daily <- poker_vector + roulette_vector
# 
# Based on the previous analysis, it looks like you had a mix of good and bad days. This is not what your ego expected, and you wonder if there may be a very tiny chance you have lost money over the week in total?
# 
# A function that helps you to answer this question is sum(). It calculates the sum of all elements of a vector. For example, to calculate the total amount of money you have lost/won with poker you do:

# Total winnings with poker
total_poker <- sum(poker_vector)

# Total winnings with roulette
total_roulette <-  sum(roulette_vector)

# Total winnings overall
total_week <- total_poker + total_roulette

# Print out total_week
total_week

# Calculate total gains for poker and roulette
total_poker <- sum(poker_vector)
total_roulette <- sum(roulette_vector)

# Check if you realized higher total gains in poker than in roulette 
total_poker > total_roulette

# Your hunch seemed to be right. It appears that the poker game is more your cup of tea than roulette.

# Another possible route for investigation is your performance at the beginning of the working week compared to the end of it. You did have a couple of Margarita cocktails at the end of the week...
# 
# To answer that question, you only want to focus on a selection of the total_vector. In other words, our goal is to select specific elements of the vector. To select elements of a vector (and later matrices, data frames, ...), you can use square brackets. Between the square brackets, you indicate what elements to select. For example, to select the first element of the vector, you type poker_vector[1]. To select the second element of the vector, you type poker_vector[2], etc. Notice that the first element in a vector has index 1, not 0 as in many other programming languages.

# Define a new variable based on a selection
poker_wednesday <- poker_vector[3]

# Assign the poker results of Tuesday, Wednesday and Thursday to the variable poker_midweek.

# Define a new variable based on a selection
poker_midweek <- poker_vector[c(2,3,4)]

# So, another way to find the mid-week results is poker_vector[2:4]. Notice how the vector 2:4 is placed between the square brackets to select element 2 up to 4.

# Define a new variable based on a selection
roulette_selection_vector <- roulette_vector[2:5]

# Another way to tackle the previous exercise is by using the names of the vector elements (Monday, Tuesday, ...) instead of their numeric positions. For example,
# 
# poker_vector["Monday"]

# Select poker results for Monday, Tuesday and Wednesday
poker_start <- poker_vector[c('Monday','Tuesday','Wednesday')]

# Calculate the average of the elements in poker_start
mean(poker_start)

#==================# Selection By Comparision #=====================#
# Which days did you make money on poker?
selection_vector <- poker_vector > 0

# Print out selection_vector
selection_vector

# Select from poker_vector these days
poker_winning_days <- poker_vector[selection_vector]

# Which days did you make money on roulette?
selection_vector <- roulette_vector > 0 

# Select from roulette_vector these days
roulette_winning_days <- roulette_vector[selection_vector]