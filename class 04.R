
a=c(1,2,3)
b=c(4,5,6,7,8)
b=c(7,8,9)
x= cbind(a,b)
x
y= rbind(a,b)
y
z=cbind(1,a,b)
z

state= c("tas","sa","asds","dsj")
statef= factor(state)
incomes=c(60,49,36,90)
incomef= factor(cut(incomes,breaks=35+10*(0:3)))  #how to work cut and factor?
incomef
table(incomef)
table(incomef,statef)
  
      