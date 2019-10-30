# Converting Tabular Data to Row Data

# Load Data
?UCBAdmissions
str(UCBAdmissions)
UCBAdmissions

# If we need to know, how many people were admitted and rejected

# The Problem
admit.fail <- (UCBAdmissions$Admit) # Doesn't Work

plot(UCBAdmissions) # Does work but not what we wanted

# Get Marginal Frequencies from Original Table
margin.table(UCBAdmissions, 1) # Admit
margin.table(UCBAdmissions, 2) # Gender
margin.table(UCBAdmissions, 3) # Dept
margin.table(UCBAdmissions)

# Save Marginals as New Table
admit.dept <- margin.table(UCBAdmissions, 3) # Dept
str(admit.dept)
barplot(admit.dept)
admit.dept # Show Frequencies
prop.table(admit.dept) # Show as Proportions
round(prop.table(admit.dept), 2) # Show as Proportions w/2 digits
round(prop.table(admit.dept), 2) * 100 # Give Percentages w/o decimal places


# Go from table to one row per case
admit1 <- as.data.frame.table(UCBAdmissions) # Coerces to Data Frame
admit2 <- lapply(admit1, function(x)rep(x,admit1$Freq)) # Repeats each row by Frequency
admit3 <- as.data.frame(admit2) # Converts from list back to data frame
admit4 <- admit3[, -4] # Removes Fourth Column With Frequencies

# Or do it in One Go...
admit.rows <- as.data.frame(lapply(as.data.frame.table(UCBAdmissions), function(x)rep(x,as.data.frame.table(UCBAdmissions)$Freq)))[, -4]
str(admit.rows)
admit.rows[1:10, ] # View First Ten Rows of Data (of 4526)

rm(list=ls()) # Clean Up Workspace
