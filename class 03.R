z=c(1:3,NA)
z
ind= is.na(z)
ind

state=c("tas","sa")
statef= factor(state)
statef
levels(statef)
incomes=c(10,12)
incomeans=tapply(incomes,statef,mean)
incomeans

h= c(1:24)
is.vector(h)
h= (1:24)
is.vector(h)
h

z=array(h,dim=c(3,4,2))
z
z[2,4,1] # R,C,MAT

m=matrix(h,6,4,byrow=T)
m
m[3,4]
m[3,]
m[,4]

m[,c(1,4)]

diag(c(5,4)) #diagonal mat
diag(m)

