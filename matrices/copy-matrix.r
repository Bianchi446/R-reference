# Example 3 : Creating a vector based on a boolean matrix -- Condition : If the majority of the elements of the row of the matrix is 0 or 1, then the vector will be 0 or 1. 

x <- matrix(nrow=3, ncol=5)
x[1,1] <- 1
x[1,2] <- 0
x[1,3] <- 1
x[1,4] <- 0
x[1,5] <- 0
x[2,1] <- 1
x[2,2] <- 1
x[2,3] <- 1
x[2,4] <- 0
x[2,5] <- 0
x[3,1] <- 0
x[3,2] <- 1
x[3,3] <- 1
x[3,4] <- 0
x[3,5] <- 1


copymaj <- function(rw, d)  {

        maj <- sum(rw[1:d]) / d
        return(if(maj > 0.5) 1 else 0 )
}

apply(x, 1, copymaj, 3)

apply(x, 1, copymaj, 2)

