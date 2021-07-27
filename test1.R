n = 100000000
x = runif(n, -1, 1)
y = runif(n, -1, 1)
lambda = mean(x^2+y^2 < 1)
cat("pi=",lambda*4, "\n");

# Example1.
g = function(x) 4*sqrt(1-x^2)
n = 10000
const = 4 
x = runif(n, 0,1)
y = runif(n, 0, const)
p.hat = mean(y<=g(x))
I.hat = 4*p.hat

# Plot1.
col = 1+as.integer(y<=g(x))
curve(g, xlim=c(0,1), col="red")
points(x,y, col=col)

# Example2.
g = function(x) exp(x)
n = 10000
const = exp(1) 
x = runif(n, 0,1)
y = runif(n, 0, const)
p.hat = mean(y<=g(x))
I.hat = exp(1)*p.hat

# Plot2.
col=1+as.integer(y<=g(x))
curve(g, xlim=c(0,1), col="red")
points(x,y, col=col)