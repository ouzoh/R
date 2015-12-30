# Vector is simply a list of values.
# R relies on vectors for many of its operations, including basic plots
# Source:http://tryr.codeschool.com/
# 12-29-2015

# c create a new vector by combining values
c(1, 2, 3)
c('a','b','c')


# Sequence vector 1-3 in 0.5 step
seq(1, 3, 0.5) # outputs 1.0 1.5 2.0 2.5 3.0


# Vector Access
letters <- c('a','b','c')
letters[3] # outputs "c" 
# Vector Reassign
letters[3] <- "d"
# Vector Assign new
letters[4] <- "e"
# Vecor Read
letters[seq(1, 4)] # outputs "a", "b", "d", "e"
