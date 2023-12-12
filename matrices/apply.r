# Review of *apply() functions on matrices.

# apply() instructs R to call a user - specified function on each of the rows and columns. 

# apply(m, dimcode, f, fargs)


# Example : Applying the mean() function to a matrix 

z <- matrix(nrow=3, ncol=2)

z[1,1] <- 1
z[1,2] <- 4
z[2,1] <- 2
z[2,2] <- 5
z[3,1] <- 3
z[3,2] <- 6
z

apply(z, 2 , mean)


# Example 2 : Applying a user function 

f <- function(x) x/c(2, 8)

apply(z, 1, f)


