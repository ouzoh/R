# Up and Running with R
# Ex06_03
# Creating crosstabs for categorical variables

# Load data file about social networks
# Deleted one case with missing data on Gender
sn <- read.csv("social_network.csv", header = T)
names(sn)

# Create contingency table
#Looking at association between gender and site
sn.tab <- table(sn$Gender, sn$Site)
sn.tab

# If desired, can get marginal frequencies
#total rows and columns
margin.table(sn.tab, 1) # Row marginal frequencies
margin.table(sn.tab, 2) # Column marginal frequencies

# Call also get cell, row, and column %
# With rounding to get just 2 decimal places
round(prop.table(sn.tab), 2)    # cell %
round(prop.table(sn.tab, 1), 2) # row %
round(prop.table(sn.tab, 2), 2) # column %

# Chi-squared test
# < 0.05 p-value then it is statistically significant; 
#(Warning message: small sample and expected freq 5 or 12)
chisq.test(sn.tab)
