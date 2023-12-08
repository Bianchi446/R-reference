# Linear algebra operations, matrix indexing, matrix filtering. 

# Matrix multiplication, multiplication by scalar, matrix addition 

y <- matrix(c(1,2,3,4), nrow=2, ncol=2)
y

y %*% y


# Matrix multiplication by scalar

3*y 

# Matrix addition

3+y



# Matrix indexing 

w <- matrix(nrow=4, ncol=3)
w[1,1] <- 1
w[1,2] <- 1
w[1,3] <- 1
w[2,1] <- 2
w[2,2] <- 1
w[2,3] <- 0
w[3,1] <- 3
w[3,2] <- 0
w[3,3] <- 1
w[4.1] <- 4
w[4,2] <- 0
w[4,3] <- 0
w


# Requesting sub-matrix of matrix w consisting of columns 2 and 3
w[, 2:3]


# Assigning values to sub-matrix : This modifies the original matrix 

w[c(1,2),] <- matrix(c(9,8,7), nrow=3)
w


# Another example of assigment of submatrices 

z <- matrix(nrow=3, ncol=3)
a <- matrix(c(4,5,2,3), nrow=2)
a

z[2:3, 2:3] <- a
z

