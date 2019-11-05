# Equality

# Comparison of logicals
TRUE == FALSE

# Comparison of numerics
(-6*14) != (17-101)

# Comparison of character strings
"useR" == "user"

# Compare a logical with a numeric
TRUE == 1

# Greater and less than

# Comparison of numerics
(-6*5+2) >= (-10+1)

# Comparison of character strings
"raining" <= "raining dogs"

# Comparison of logicals
TRUE > FALSE

# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

# Popular days
linkedin > 15

# Quiet days
linkedin <= 5

# LinkedIn more popular than Facebook
linkedin > facebook

# Compare Metrics

# The social data has been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)
views <- matrix(c(linkedin, facebook), nrow = 2, byrow = TRUE)

# When does views equal 13?
views == 13

# When is views less than or equal to 14?
views <= 14

#==============================# Logical Operator #==============================#

# The linkedin and last variable are already defined for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
last <- tail(linkedin, 1)

# Is last under 5 or above 10?
last < 5 | last>10

# Is last between 15 (exclusive) and 20 (inclusive)?
last > 15 & last <= 20

# linkedin exceeds 10 but facebook below 10
linkedin > 10 & facebook < 10

# When were one or both visited at least 12 times?
linkedin >= 12 | facebook >=12

# When is views between 11 (exclusive) and 14 (inclusive)?
views > 11 & views <= 14

#========================# Conditional Statements #==============================#

# Variables related to your last day of recordings
medium <- "LinkedIn"
num_views <- 14

# Examine the if statement for medium
if (medium == "LinkedIn") {
  print("Showing LinkedIn information")
}

# Write the if statement for num_views
if (num_views > 15) {
  print("You're popular!")
}

# Control structure for medium
if (medium == "LinkedIn") {
  print("Showing LinkedIn information")
} else {
  print("Unknown medium")
}

# Control structure for num_views
if (num_views > 15) {
  print("You're popular!")
} else {
  print("Try to be more visible!")
}

# Variables related to your last day of recordings
medium <- "LinkedIn"
num_views <- 14

# Control structure for medium
if (medium == "LinkedIn") {
  print("Showing LinkedIn information")
} else if (medium == "Facebook") {
  # Add code to print correct string when condition is TRUE
  print("Showing Facebook information")
} else {
  print("Unknown medium")
}

# Control structure for num_views
if (num_views > 15) {
  print("You're popular!")
} else if (num_views <= 15 & num_views > 10) {
  # Add code to print correct string when condition is TRUE
  print("Your number of views is average")
} else {
  print("Try to be more visible!")
}

# Variables related to your last day of recordings
li <- 15
fb <- 9

# Code the control-flow construct
if (li>15 & fb>15) {
  sms <- 2 * (li + fb)
} else if (li<10 & fb<10) {
  sms <- 0.5 * (li + fb)
} else {
  sms <- li + fb
}

# Print the resulting sms to the console
print(sms)

# Constructing the li_df data frame
employee_1 <- c(2, 3, 3, 6, 4, 2, 0)
employee_2 <- c(19, 23, 18, 22, 23, 29, 25)
employee_3 <- c(24, 18, 15, 19, 18, 22, 17)
employee_4 <- c(22, 18, 27, 26, 19, 21, 25)
employee_5 <- c(25, 25, 26, 31, 24, 36, 37)
employee_6 <- c(22, 20, 29, 26, 23, 22, 29)
employee_7 <- c(0, 4, 2, 2, 3, 4, 2)
employee_8 <- c(12, 3, 15, 7, 1, 15, 11)
employee_9 <- c(19, 22, 22, 19, 25, 24, 23)
employee_10 <- c(23, 12, 19, 25, 18, 22, 22)
employee_11 <- c(29, 27, 23, 25, 29, 30, 17)
employee_12 <- c(13, 13, 20, 17, 12, 22, 20)
employee_13 <- c(7, 17, 9, 5, 11, 9, 9)
employee_14 <- c(26, 27, 28, 36, 29, 31, 30)
employee_15 <- c(7, 6, 4, 11, 5, 5, 15)
employee_16 <- c(32, 35, 31, 35, 24, 25, 36)
employee_17 <- c(7, 17, 9, 12, 13, 6, 12)
employee_18 <- c(9, 6, 3, 12, 3, 8, 6)
employee_19 <- c(0, 1, 11, 6, 0, 4, 11)
employee_20 <- c(9, 12, 6, 13, 12, 13, 11)
employee_21 <- c(6, 15, 15, 10, 9, 7, 18)
employee_22 <- c(17, 17, 12, 4, 14, 17, 7)
employee_23 <- c(1, 12, 8, 2, 4, 4, 11)
employee_24 <- c(5, 8, 0, 1, 6, 3, 1)
employee_25 <- c(2, 7, 5, 3, 1, 5, 5)
employee_26 <- c(29, 25, 32, 28, 28, 27, 27)
employee_27 <- c(17, 15, 17, 23, 23, 17, 22)
employee_28 <- c(26, 32, 33, 30, 33, 28, 26)
employee_29 <- c(27, 29, 24, 29, 26, 31, 28)
employee_30 <- c(4, 1, 1, 2, 1, 7, 4)
employee_31 <- c(22, 22, 17, 20, 14, 19, 13)
employee_32 <- c(9, 11, 7, 10, 8, 15, 5)
employee_33 <- c(6, 5, 12, 5, 17, 17, 4)
employee_34 <- c(18, 17, 12, 22, 22, 13, 12)
employee_35 <- c(2, 12, 13, 7, 10, 6, 2)
employee_36 <- c(32, 26, 20, 23, 24, 25, 21)
employee_37 <- c(5, 13, 12, 11, 6, 5, 10)
employee_38 <- c(6, 10, 11, 6, 6, 2, 5)
employee_39 <- c(30, 37, 32, 35, 37, 41, 42)
employee_40 <- c(34, 33, 32, 35, 33, 27, 35)
employee_41 <- c(15, 19, 21, 18, 22, 26, 22)
employee_42 <- c(28, 29, 30, 19, 21, 19, 26)
employee_43 <- c(6, 8, 6, 7, 17, 11, 14)
employee_44 <- c(17, 22, 27, 24, 18, 28, 24)
employee_45 <- c(6, 10, 17, 18, 13, 10, 7)
employee_46 <- c(18, 19, 22, 17, 21, 15, 23)
employee_47 <- c(21, 27, 28, 28, 26, 17, 25)
employee_48 <- c(10, 18, 20, 18, 12, 19, 17)
employee_49 <- c(6, 15, 15, 15, 10, 14, 2)
employee_50 <- c(30, 28, 29, 31, 24, 20, 25)

li_df <- c(employee_1, employee_2, employee_3, employee_4, employee_5, 
           employee_6, employee_7, employee_8, employee_9, employee_10, 
           employee_11, employee_12, employee_13, employee_14, employee_15, 
           employee_16, employee_17, employee_18, employee_19, employee_20, 
           employee_21, employee_22, employee_23, employee_24, employee_25, 
           employee_26, employee_27, employee_28, employee_29, employee_30, 
           employee_31, employee_32, employee_33, employee_34, employee_35, 
           employee_36, employee_37, employee_38, employee_39, employee_40, 
           employee_41, employee_42, employee_43, employee_44, employee_45, 
           employee_46, employee_47, employee_48, employee_49, employee_50)

li_df <- matrix(li_df, nrow = 50, byrow = TRUE)

colnames(li_df) <- c("day1", "day2", "day3", "day4", "day5", "day6", "day7")

li_df <- data.frame(li_df)

# Select the second column, named day2, from li_df: second
second <- li_df[, 2]

# Build a logical vector, TRUE if value in second is extreme: extremes
extremes <- second > 25 | second < 5

# Count the number of TRUEs in extremes
sum(extremes)

# Solve it with a one-liner
sum(li_df[, 2] > 25 | li_df[, 2] < 5)