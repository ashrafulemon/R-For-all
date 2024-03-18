x=c(2,4,5,6,6,5,7,6,6,7)
y=c(4,4,5,6,5,5,4,4,5,4) #not reletion
y1= 2*x+5
y2= 2.5*x+6
y3= 3*x
plot(x,y1,type="l")

plot(x,y2,type="l",lty = 1,col="red")
lines(x,y1,lty=2,col="blue")
lines(x,y3,lty=3,col="green")
points(x,y)

text(4,20,"plot of y on x")

abline(5,2) # intersept, slop
abline(15,3)
abline(h=15)
abline(v=5)


a= lm(y1~x)
a
abline(a)
