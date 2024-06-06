library(mvnormtest)

library(MASS)


mu =c(2,3)
s= matrix(c(2,1,1,2),2,2,byrow=T)
x =mvrnorm(100,mu,s)
colMeans(x)



#new
library(readxl)
library(openxlsx)
#example 4.12

x= read.xlsx("C:\\Users\\Asus\\Desktop\\my\\STA361_ R\\class r\\data1.xlsx",colNames= T)

d= as.matrix(x)

m= matrix(colMeans(d)) # 155.603, 14.704


v=var(d)
solve(v)


ds= array(0,10)
qs= array(0,10)




plot()








