#2b odd vector
x= seq(1,30,2)
x

#2c matrix by row & col

a=1:16
b=21:36
A= matrix(a,nrow=4,ncol=4,byrow=T)
A
B= matrix(b,nrow=4,ncol=4,byrow=F)
B

A %*% B
solve(A)

#3b arithmetic mean
x= c(1,2,3,4,5)
l= length(x)
sum1=0
for( i in 1:l){
  sum1=sum1+x[i]
}
am= sum1/l
am

#3c sum of series
x= seq(2,30,2)
l= length(x)
sum1=0
for( i in 1:l){
  sum1=sum1+x[i]
}
sum1
