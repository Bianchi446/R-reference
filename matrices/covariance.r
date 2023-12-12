# Specifying a covariance matrix 

# Problem : We are working with a n-variate normal distribution for n = 3 and rho = 0.2 and variance = 1

makecov <- function(rho, n) {

	m <- matrix(nrow=n, ncol=n)
	m <- ifelse(row(m) == col(m), 1, rho)
	return(m)
}

makecov(0.25, 4)



