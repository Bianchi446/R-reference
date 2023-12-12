# Extended example : Finding outliers in a dataset

# Overview : We have retail sales data, and we want to know the most deviant observation for each store (Each row is a store in the matrix)

rs <- matrix(c(1,22,4,13,17,2,55,88,99), nrow=3, ncol=3)
rs

findols <- function(x) {

    findol <- function(xrow) { 
   
	   mdn <- median(xrow)
	   devs <- abs(xrow-mdn)
	   return(which.max(devs))
    }

    return(apply(x, 1 , findol))
}

findols(rs)
