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


