# Filtering matrices by rows or columns 

x <- matrix(nrow=3, ncol=2)

x[1,1] <- 1
x[1,2] <- 2
x[2,1] <- 2
x[2,2] <- 3
x[3,1] <- 3
x[3,2] <- 4
x

x[x[,2] >= 3, ]
x

# Filtering a column via less-than and greater-than signs
j <- x[,2] >= x[,1]
j


# j is a vectorized operation with the following properties :

# 1. The object x[,2]
# 2. The operator >= compares two vectors
# 3. The number 3 was recycled to a vector of 3s

z <- c(5,12)
x[, z %% 2 == 1]


# Another example of filtering 

m <- matrix(nrow=3, ncol=2)
m[1,1] <- 2
m[1,2] <- 4
m[2,1] <- 2
m[2,2] <- 5
m[3,1] <- 3
m[3,2] <- 6

m

# sub - matrix extraction
m[m[,1] > 1 & m[,2] > 5,]




