x=c(5,6,7,8,9,8,9)
l= length(x)
sum=0
for (i in 1:l){
  sum= sum+x[i]
}
Am= sum/l
print(Am)


x=seq(2,30,2)
x
l= length(x)
sum=0
for (i in 1:l){
  sum= sum+x[i]
}
print(sum)




#assign(x,c(1,2,3))
assign("x",c(1,2,3))

x= seq(1,30,2)
x




x=1:16
y=21:36
A= matrix(x,nrow=4,ncol=4,byrow=T)
A
B= matrix(x,nrow=4,ncol=4,byrow=F)
B

A%*%B
solve(A)
