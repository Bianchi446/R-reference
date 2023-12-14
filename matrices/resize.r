# Adding and deleting matrix rows and columns 

x <- matrix(c(1, 2 ,3 ,4, 5), ncol=5)
x

x <- c(x, 20)
x

x <- c(x[1:3], 20, x[4:6])
x


x <- x[-2:-4]
x

x <- x[-1:-2]
x

# Using cbind and rbind 

q <- cbind(c(1,2), c(3,4))
q

p <- rbind(c(1,2), c(5,6))
p


