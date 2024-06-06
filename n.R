getwd()
setwd("I:\\final_exam")
getwd()

builtins()
help(sqrt)

a= seq(1,10,1)
sum=0
for(i in 1:10){
  sum= sum+a[i]
}
sum
ls()
rm(a)
rm(list=ls())

state=c("tas","sa","sa","aaa")
s= factor(state)
incomes=c(10,12,1,4)

me= tapply(incomes,s,mean)
me
z= array(c(1,2,3,4,5,6),dim=c(1,3,2))
z

state= c("tas","sa","asds","dsj","sa")
statef= factor(state)
state
incomes=c(60,49,36,90,70)
inf= factor(cut(incomes,breaks=(30+10*(0:3))))
table(inf,statef)


a= read.csv(choose.files())
data()
d= iris
nrow(d)
ncol(d)
dim(d)
a=10.5
print(sprintf("ok %.2f",a))


min_max= function(x){
  mx=x[1]
  mn=x[1]
  a=1
  n=1
  for(i in 1:length(x)){
    if(mx<x[i]){
      mx=x[i]
      a=i
    }
    if(mn>x[i]){
      mn=x[i]
      n=i
    }
  }
  return(list(max=mx,min=mn,ithm= a,ithn=n))
}
a=min_max(c(1,4,2,6,2,8,0,10,5))
a

# gm= pd^(1/n)
#su= su+1/x[i], hm= n/su

# if(n%%2==1) d[(n+1)/2],  d[n/2+1]+d[n/2] /2


x= c(1,1,2,2,3,4,4,3,5,6,5,6,2,3,3,2)
cnt=0
mx=0
n= length(x)
md=0
for(i in 1:n){
  cnt=0
  for(j in 1:n){
    if(x[i]==x[j]){
      cnt=cnt+1
    }
  }
  if(cnt>mx){
    mx=cnt
    md=x[i]
  }
}
mx
md

par(mfrow=c(2,2))
hist(rnorm(10))
hist(rnorm(1000),main="hist",xlab="dd",ylab="se",freq=F)
lines(density(rnorm(1000)),col= "red")


x=c(2,4,5,6,6,5,7,6,6,7)
y=c(4,4,5,6,5,5,4,4,5,4) #not reletion
y1= 2*x+5
y2= 2.5*x+6
y3= 3*x


plot(x,y1,main="sd",type="l",lty=1,col="red")
lines(x,y2,lty=2,col="green")

legend(6,18,c("ss","mm"),fill= c("red","green"),lty=c(1,2,3))

abline(10,2)
abline(v=5)
a= lm(y1~x)
abline(a)
cor(x,y1)

x=c(2,4,5,6,6,5,7,6,6,7)
y=c(4,4,5,6,5,5,4,4,5,4) 
sx=0
ssx=0
ssy=0
sy=0
spxy=0
n=length(x)
for(i in 1:n){
  sx= sx+x[i]
  sy= sy+y[i]
  ssx= ssx+x[i]^2
  ssy= ssy+y[i]^2
  spxy= spxy+(x[i]*y[i])
}

v= spxy- (sx*sy/n)
v2= ssx- sx^2/n
v1= sqrt((ssx-(sx^2)/n)*(ssy-(sy^2)/n))
coef= v/v1
b= v/v2 
cor(x,y)
b= lm(y~x)
b

a=rchisq(20000,10) # 10 df
plot(a)
plot(density(a))



s= c("H","T")
p= c("H","T")
n=3
for(i in 1:(n-1)){
  s=outer(s,p,paste0)
}
s=c(s)
s
ct=0
l= length(s)
for(i in 1:l){
  x=unlist(strsplit(s[i],""))
  t=0
  for(j in 1:n){
    if(x[j]=="H"){
      t=t+1
    }
  }
  if(t>=2){
    ct=ct+1
  }
}
p =ct/l
p


# impirical
s=c("h","t")
out= "h"
ct=0
t=100
for(i in 1:t ){
  x= sample(s,1)
  if(x=="h"){
    ct=ct+1
  }
}
p=ct/t
p

x=c(1,2,3,4,5)
a=t.test(x,mu=5)
p = a$p.value
p
solve(a)

solve(a,b)


v=c()
for( i in 1:10){
  v=c(v,sqrt(i))
}
v
