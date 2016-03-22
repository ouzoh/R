# Up and Running with R
# Ex06_04
# Comparing means with the t-test

# Load data file about Google searches by state
google <- read.csv("google_correlate.csv", header = T)
names(google)

# independent 2-group t-test
#Welch test allows for unequal variants between samples
#nba as the outcome weather a state has an nba team
#fractional degree of freedom (df)
t.test(google$nba ~ google$has_nba)
