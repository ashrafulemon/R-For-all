
a=c(1,2,3)
b=c(4,5,6,7,8)
b=c(7,8,9)
x= cbind(a,b)
x
y= rbind(a,b)
y

z=cbind(1,a,b)
z

A <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3)
A
A <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3,byrow=T)
A
A <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3, byrow=F)
A
# Transpose the matrix
A_transposed <- t(A)
A_transposed

state= c("tas","sa","asds","dsj")
statef= factor(state)
state
incomes=c(60,49,36,90)

mean_factor = tapply(incomes,statef,mean)
cut(incomes,breaks=35+10*(0:3))
incomef= factor(cut(incomes,breaks=35+10*(0:3)))  #how to work cut and factor?

incomef
table(incomef)
table(incomef,statef)
  
      