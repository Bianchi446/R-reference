 # Problem :  Finding the closest pair of vertices in a Graph 


# Input : A function inputs a distance matrix where the elements i, j gives the distance between city i and j and outputs the minimun one-hoop distance between cities and the pair of cities that achieves that minimum. 


# Output : Returns the minimun value d[i,j] where i != j. 

mind <- function(d) {

	n <- nrow(d)

	# Add a number to identify row number for apply()

	dd <- cbind(d, 1:n)
	wmins <- apply(dd[-n, ], 1, imin)
	
	i <- which.min(wmins[2, ])
	j <- wmins[1, i]
	return(c(d[i,j], i ,j))
}


# Finds the location, value of the minimun in a row x

imin <- function(x) {
	lx <- length(x)
	i <- x[lx] # original row number
	j <- which.min(x[(i+1):(lx-1)])
	k <- i+j
	 return(c(k,x[k]))
}

q <- cbind(c(0,12,13,8,20), 
	   c(12, 0, 15, 28, 88),
	   c(13, 15, 0, 6, 9),
	   c(8, 28, 6, 0, 33),
	   c(20, 88, 9, 33, 0))
q
mind(q)


# Some facts about the logic 

# 1. The matrix is symmetric 
# 2. The imin() function finds the minimun value in the specified row 
# 3. The which.min function returns the minimum's index relative to the range (i+1) (1x - 1)


