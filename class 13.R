x=c(2,4,5,6,6,5,7,6,6,7)
y=c(4,4,5,6,5,5,4,4,5,4) #not reletion
y1= 2*x+5
y2= 2.5*x+6
y3= 3*x
plot(x,y1,type="l")

plot(x,y1,type="l",lty = 1,col="red")
lines(x,y2,lty=2,col="blue")
lines(x,y3,lty=3,col="green")

points(x,y)

text(4,20,"plot of y on x")

abline(5,2) # intersept, slop
abline(15,3)
abline(h=4)
abline(v=5)


a= lm(y1~x)
a
#a$(Intercept)
abline(a)


# Create example data
x <- 1:10
y1 <- rnorm(10)
y2 <- runif(10)
y3 <- rnorm(10, mean = 2)

# Create the main plot
plot(x, y1, main = "Enhanced Scatter Plot", col = "blue", pch = 16, ylim = range(c(y1, y2, y3)))

# Add additional points
points(x, y2, col = "red", pch = 19)  # Red solid circles
points(x, y3, col = "green", pch = 17)  # Green solid triangles

