# class1
builtins()  #all function ***
help(sqrt)  #for formula  ***
getwd()
#setwd()
source("C:/Users/Asus/Desktop/my/STA361_ R/class r/class 01.R")


10 *5
10/3      #division
10%%3     #vagshes
10%/%3    #integer division

12/6*2+1-2  #prefarence (/ *) > (+ -)  >> left side first 

a= 10
sqrt(a)
sum(5,6,7,1000)

sum =0
for(i in 1:5){
  print(i)
  sum=sum+i
}
sum


# class 2
gender = c(1,2,3,6,5,9)
ct = c(1,2,3,TRUE)
y= c("jhvuj","hgvyrfx",2)
gender = 'jhuyguy'

x=2>4

mode(x)
class(y)
typeof(y)

length(ct)

ls()
objects()

b=56
rm(x,b)
rm(list=ls())


assign("x",c(6,7,5))

seq(0,100,3 )
seq(from=0,to=100,by=3 )
seq(from=0,by=3 ,length= 5)

rep(10,5)
rep(1:3,5)
rep(1:3,times=5)
rep(1:3,each=5)
gd= c(rep(0,2),rep(1,5))

#class 3
z=c(1:3,NA)
ind= is.na(z)
ind

state=c("tas","sa","sa","aaa")
statef= factor(state)
levels(statef)
incomes=c(10,12,1,4)

incomeans=tapply(incomes,statef,mean)
incomeans


h= c(1:24)
z=array(h,dim=c(3,4,2))
dim(h)= c(3,4,2)
z
z[2,4,1] # R,C,MAT
a=c(1,2,3)
d=c(4,5,6,7,8)
b=c(7,8,9)
ab= a+b

x= cbind(a,b)
y= rbind(a,b)
z=cbind(1,a,b)
z


m=matrix(h,6,4,byrow=T)
m=matrix(h,nrow=6,ncol=4,byrow=F)
m
m[3,4]
m[3,]
m[,4]
m[,c(1,4)]

diag(c(5,4)) #diagonal mat
diag(m)

A_transposed <- t(m)  # Transpose the matrix
A_transposed

#class 4 
state= c("tas","sa","asds","dsj","sa")
statef= factor(state)
state
incomes=c(60,49,36,90,70)

incomef= factor(cut(incomes,breaks=35+10*(0:5)))  #how to work cut and factor?
table(incomef,statef)
table(incomef)
table(statef)


#class 5
x=20;y=60;z=20
pie(c(x,y,z),c("Xx","y","z"),main="pic chart")

#class 6
name="asd"
wife="mary"
children=3
child.ages=c(4,7,9)
lst= list(name,wife,children,child.ages)
lst

lst4= list(name=c("asd","sasd"),wife=c("sds","mary"),
           children=c(3,4),child.ages=list(c(4,7,9),c(3,4,5,6)))
lst4
lst4$name
lst4$child.ages
lst4$child.ages[2]
lst4$child.ages[1:2]
lst4[4]
lst4[[4]][1]

lst4[[5]]= list(school=c("as","asd"),exp=c(12,34))
lst4
lst4[[1]]=c("aaa","sdssss")
lst4

lst4[[1]][1]=list(c("a","sd"))  #add eliment or edit #my code ok
lst4

a=c(1,3,4)
b=c(44,5,6)
d=c(2,4,5)
data1=data.frame(a,b,d)
data1[1,2]

#class 7
#class 8

a= c(1:5)
b= c(6:10)
data= data.frame(a,b)
rm(a,b)
attach(data)
a
data$a
detach(data)
a
data$a


xnew1= edit(data.frame())
aaa= edit(data)

data(iris)
data1=iris
head(data1)
head(data1,10)
data1[1:10,]
tail(data1)
tail(data1, 3)
View(data1)  #capital
print(data1)


xdata= read.csv("abc.csv")
xd=read.csv(choose.files())
#install.packages("readxl")
#library(readxl)
#xd1=read.table(choose.files(),header=T, sep=(","))# check it again # csv needed
#xd1=read.table(choose.files(),header=T)# check it again


#class 9
data()
df1= iris

nrow(df1)
ncol(df1)
dim(df1)

if(4>2){
  print(2323)
}else{   #not work
  print("wsewe")
}

a=11
b=9
if(a>b) max1= a
max1=b
sprintf("this is the maximum value %d",max1)# ok
print("this is the maximum value ",max1) #not ok
cat("this is the maximum value ",max1)



x= rnorm(1)
y= rnorm(1)
z= rnorm(1)
if(x>y & x>z){
  #  print(1212)                          
  sprintf("X =%f is the Highst value",x)   #  work after print, but not work before print.
  #  print(121)                             
}else if(y>z){
  sprintf("Y =%f is the Highst value",y)
}else{
  sprintf("Z =%f is the Highst value",z)
}


if(x>y & x>z){
  print(sprintf("X =%f is the Highst value \n",x))
  if(y>z){
    print(sprintf("y =%f is the Middel value\n",y))
    print(sprintf("z =%f is the lowest value \n",z))
  }else{
    print(sprintf("z =%f is the Middel value \n",z))
    print(sprintf("y =%f is the lowest value ",y))     
  }
}else if(y>z){
  print(sprintf("Y =%f is the Highst value ",y))  
  if(x>z){
    print(sprintf("x =%f is the Middel value",x))
    print(sprintf("z =%f is the lowest value",z))
  }else{
    print(sprintf("z =%f is the Middel value",z))
    print(sprintf("x =%f is the lowest value",x))
  }
}else{
  print(sprintf("Z is the Highst value"))
  if(y>x){
    print(sprintf("y  is the Middel value"))
    print(sprintf("x is the lowest value"))
  }else{
    print(sprintf("x  is the Middel value"))
    print(sprintf("y  is the lowest value"))
  }
}


#class 10
a= rnorm(10)
max1= a[1]
ith=1
for(i in 1:10){
  if(a[i]>max1){
    max1=a[i]
    ith= i
  }
}
print(max1)
print(ith)

min1= a[1]
jth=1
for(i in 1:10){
  if(a[i]<min1){
    min1=a[i]
    jth= i
  }
}
print(min1)
print(jth)

max(a)
min(a)


x=c(10,2,5,3,4)
n=length(x)
sum1=0
for (i in 1:n){
  sum1= sum1+x[i]
}
am= sum1/n
am
print(mean(x))


x=c(10,2,5,3,4)
n=length(x)
if (any(x <= 0)) {
  stop("Geometric mean is not defined for non-positive numbers.")
}
pd1=1
for (i in 1:n){
  pd1= pd1*x[i]
}
print(pd1)
gm= (pd1)^(1/n)
gm



x=c(10,2,5,3,4)
n=length(x)
su=0
for (i in 1:n){
  su= su+(1/x[i])
}
print(su)

hm= n/su
hm

#class 11
mean(c(0,10,NA,10),na.rm=T)
mean(c(12,3,4))

#median
#sort
x= c(1,9,3,4,5,6,2,8,9,10)

for(i in 1:length(x)){
  for(j in i:length(x)){
    if(x[i]>x[j]){
      temp= x[i]
      x[i]=x[j]
      x[j]=temp
    }
  }
}
print(x)

data1<-sort(x)
median(data1)
median(x)

n=length(x)
if (n %%2 == 1) {
  median1=data1[(n + 1) / 2]
} else {
  l_m=data1[n / 2]
  u_m=data1[n / 2 + 1]
  median1=(l_m + u_m) / 2
}
print(median1)

#mood#gooooood
x= c(1,1,2,2,3,4,4,3,5,6,5,6,2,3,3,2)
cnt=0
mx=0
for( i in 1:length(x)){
  cnt=0
  for(j in 1:length(x)){
    if(x[i]==x[j]){
      cnt=cnt+1
    }
  }
  if(cnt>mx){
    mx=cnt
    #md=x[i]
  }
}
mx
md=c()
for( i in 1:length(x)){
  ct=0
  for(j in i:length(x)){
    if(x[i]==x[j]){
      ct=ct+1
    }
  }
  if(ct==mx){
    print(x[i])
    md= c(md,x[i])
  }
}
md

#class 12
# r for simulation random veriates.
# d for pdf, 
# p for cdf, 
# q for quantile function, 


# n = how much random number can be generated ?
rnorm(n= 10, mean= 5, sd= 1.5)
rnorm(10,5,1)
rnorm(1)  #mean=0, sd=1
sqrt(rnorm(n=20, mean= 200, sd= 10))


# x = which point probabilily we need ?
# pdf
dnorm(x=.5, mean=1,sd=1)
dnorm(x=seq(-3,3,.1),mean=0,sd=1) # symetric                -> mean =0
dnorm(seq(-3,3,.1),1,1)           # negatively skeweed      -> mean >1
dnorm(seq(-3,3,.1),-1,1)          # positively skeweed      -> mean <1
midel_value_probability =dnorm(x=0,mean=0,sd=1)


# cdf ->cumulative probability density
# that value is % , what percentage .
# how much % of  data fall less then equal in that point
pnorm(180,mean=178, sd= 1)
pnorm(seq(-3,3,.5),0,1)
pnorm(1.96)
pnorm(1.68)
b= pnorm(5,4,2)-pnorm(2,4,2)
 

#if we want to the find x,for top 95% ,
#qnorm(p,mean,sd) #p for parcentage
qnorm(p=.67,mean=178,sd=6)
qnorm(p=seq(0,1,.1),mean=0,sd=1)
qnorm(0.025)
qnorm(0.05)


#same set of random variable
set.seed(1) # 1 any number, 1,3,4,6,......
x=rnorm(10)

x=rbinom(n=10,size=5,p=.5)
x=rpois(10,5)
x

x=rnorm(10)
plot(x)
plot(x,type= "l")

par(mfrow=c(2,2))# multi_figer --mf
hist(rnorm(10))
hist(rnorm(100))
hist(rnorm(1000))
hist(rnorm(1000))

hist(rbinom(1000,5,.5))
hist(rpois(1000,5))

x=rnorm(10000)
hist(x,main="histogram with 10000",xlab="values",ylab="feq")
hist(x,main="histogram with 10000",xlab="values",ylab="feq",freq= F)
lines(density(x),col="red")


plot(density(x))
plot(density(x),lwd=4)
plot(density(x),lwd=2,pch=1)
plot(density(x),lwd=2,pch=1,type="o")
?pch

x=c(2,4,5,6,6,5,7,6,6,7)
y=c(4,4,5,6,5,5,4,4,5,4) #not reletion
y1= 2*x+5
y2= 2.5*x+6
y3= 3*x

plot(x,y,type="l")
plot(x,y,xlab="x values",ylab="y values")

plot(x,y2,type="l")
lines(x,y1,type="l")

plot(x,y1,type="l",col="red")
lines(x,y2,type="l",col="blue")
lines(x,y3,type="l",col="green")
legend(6,20,c("a","b","c"),fill=c("red","blue","green"))

plot(x,y2,type="l",lty = 1,col="red")
lines(x,y1,lty=2,col="blue")
lines(x,y3,lty=3,col="green")
legend(2,24,c("y2","y1","y3"),col=c("red","blue","green"),lty=c(1,2,3),bty="n")


# class13
x=c(2,4,5,6,6,5,7,6,6,7)
y1= 2*x+5
y2= 2.5*x+6
y3= 3*x

#plot(x,y1,type="l",lty = 1,col="red",
    #xlim = c(0, max(x)), ylim = range(c(0, y1, y2, y3)))
plot(x,y1,type="l",lty = 1,col="red")
lines(x,y2,lty=2,col="blue")
lines(x,y3,lty=3,col="green")

points(x,y2)
text(4,15,"plot of y on x")

abline(5,2) # intersept, slop
abline(h=9)
abline(v=5)

a= lm(y1~x)
abline(a)



#regression
#corelation coiffecient
x=c(2,4,5,6,6,5,7,6,6,7)
y=c(4,4,5,6,5,5,4,4,5,4) #not reletion
y1= 2*x+5

cor(x,y1)
cor(x,y)
rg=lm(y~x)

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
v= spxy-(sx*sy)/n
v1= sqrt((ssx-(sx^2)/n)*(ssy-(sy^2)/n))
v2= (ssx-(sx^2)/n)

coef= v/v1

b= v/v2  #regression # slop
# ybar = a+ b xbar
a= sy/n - (b)*(sx/n)
a

#skewness kartosis


#chi- square
a=rchisq(20000,10) # 10 df
plot(a)
plot(density(a))

par(mfrow= c(2,2))

a=rchisq(20,10)
plot(density(a))

a=rchisq(20,1000)
plot(density(a))

a=rchisq(20000,10)
plot(density(a))

a=rchisq(20000,1000)
plot(density(a))


#sample space
#coin toss 10 times
s =c("h","t")
p =c("h","t")

n=3
for( i in 1:(n-1)){
  s= outer(s,p,paste0)
}
x=c(s)
n1=length(x)
count1= 0

for (i in 1:n1){
  lt= unlist(strsplit(x[i],""))  #lt[[1]][3]=="h"
  count2=0;
  for(j in 1:n){
    if(lt[j]=="h"){
      count2=count2+1
    }
  }
  if(count2>=2){  # at least 2 head
    count1=count1+1
  }
}
p= count1/n1
p


s =c(1,2,3,4,5,6)
p =c(1,2,3,4,5,6)
n_dias=2
for( i in 1:(n_dias-1)){
  s= outer(s,p,paste0)
}
a=c(s)

#class 14

#empirical
N_head= 0
N_toss= 100
sample_space= c("H","T")
#alloutcome= c()
for(i in 1:N_toss){
  outcome= sample(sample_space,1)
  #alloutcome[i]=outcome
  if(outcome=="H"){
    N_head= N_head+1
  }
}
p = N_head/N_toss


odd= 0
n= 100
ss= c(1,2,3,4,5,6)
expected_outcome= c(1,3,5)
oc= NULL
for(i in 1:n){
  out= sample(ss,1)
  oc[i]=out
  #if(out %in% expected_outcome){
  if(out==1 | out == 5 | out==3){
    odd= odd+1
  }
}
p =  odd/n
p


# 2 ta coin toss and 2 ta head

N_head= 0
N_toss= 100
sample_space= c("HH","HT","TH","TT")
exp_o= "HH" # 2 head
exp_o= c("HH","HT","TH") # at least 1 head
for(i in 1:N_toss){
  outcome= sample(sample_space,1)
  if(outcome %in% exp_o){
    N_head= N_head+1
  }
}
p =  N_head/N_toss
p


#class 15
mean1= function(x){
  sum1= 0
  n =length(x)
  for(i in 1:n){
    sum1=sum1+x[i]
  }
  m= sum1/n
  return(m)
}
x=c(1,2,3,4,5)
mean_x=mean1(x)

t.test(x,mu=mean_x)
qt(.025,4) # critical rigion


#mid19

assign("x",c(1,2,3))
#2b odd vector
x= seq(1,30,2)
x

#2c matrix by row & col
a=1:16
b=21:36
A= matrix(a,nrow=4,ncol=4,byrow=T)
B= matrix(b,nrow=4,ncol=4,byrow=F)
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


#mid18
#2c : generating regular sequences
a= 1:10
b =seq(1,10)
# Repeat the sequence 1, 2, 3 twice
rep(1:3, times = 2)
rep(c(1,2,3), times = 2)
# Repeat each element of 1, 2, 3 twice
rep(1:3, each = 2)

#3a :solving linear equations in R
# 2x+3y = 8
# 4x+y = 10
A= matrix(c(2,3,4,1),nrow=2,byrow=T)
B= c(8,10)
sol = solve(A,B)
sol1 = solve(A) %*% B

#3b my way
x= c(10, 12, 23, 23, 16, 23, 21, 16)
xbar= mean(x)
sd_x= sd(x)
cv= (sd_x/xbar) * 100
cv
sprintf("cv = %f",cv)

# Define a function to calculate the coefficient of variation
coefficient_of_variation <- function(data) {
  mean_value <- mean(data)
  standard_deviation <- sd(data)
  cv <- (standard_deviation / mean_value) * 100
  return(cv)
}
observations <- c(10, 12, 23, 23, 16, 23, 21, 16)
cv_result <- coefficient_of_variation(observations)




#final 18

#install.packages("Matrix")
#library(Matrix)
#data <- read.csv("F:/Data/data.csv" )

#CSV stands for Comma-Separated Values
#A repetitive structure in programming refers to a control flow construct
#that allows code to be executed repeatedly based on a condition or
#a set number of times. These structures are often called loops.
#There are several types of loops in R and other programming languages,
#including for loops, while loops, and repeat loops.


#3a
x= 1
while(x<5){
  print(x)
  x=x+1
}
x=1
repeat{
  print(x)
  x=x+1
  if(x>=5){
    break
  }
}

a= 1:10
for( i in 1:10){
  x= sqrt(a[i])
  print(x)
}
#generate vector output
v= c()
for(i in 1:10){
  a=sqrt(i)
  v=c(v,a)
}
v

#3c how do you plot the functin f(x)= (x-2)^2 using  the curve 
#function where the range of x will be -4 to 8?
# Define the function
f <- function(x){
  (x - 2)^2
}
curve(f, from = -4, to = 8, xlab = "x", ylab = "f(x)", main = "Plot of f(x) = (x-2)^2")
curve((x - 2)^2, from = -4, to = 8, xlab = "x", ylab = "f(x)", main = "Plot of f(x)")

# Generate x values from -4 to 8
x_values <- seq(-4, 8, length = 100)
y_values <- (x_values - 2)^2

boxplot(y_values, main = "Box Plot of f(x) = (x-2)^2")
pie(y_values, main = "Pie Chart of f(x) = (x-2)^2")
qqnorm(y_values)
qqline(y_values)



#4a 
a = matrix(1:12, 3,4)
a
a[2,3]
a[3,4]
a[,2]
a[1,]

#4b

a= c(1,1,3,5,2,6,-2,-1,-3)
a= matrix(a,3,3,byrow=T)
a
trp = t(a)
trp
det(a)
inv= solve(a)


# Create a vector
vec <- c(5, 3, 8, 2, 1)
sorted_vec <- sort(vec)
print(sorted_vec)

# Create a vector
vec <- c(5, 3, 8, 2, 11)
ind <- order(vec)
s_vec <- vec[ind]
print(s_vec)


#5a
data = read.csv("asdf.csv")
write.csv(data,"asdas.csv")


#5b
a= rnorm(100,0,1)
n <- 20
p <- 0.45
x <- 5

# Calculate the probability P(X = 5)
prob <- dbinom(x, size = n, prob = p)
prob <- dbinom(x, n, p)
print(prob)

# Calculate the cumulative probabilities
P_upper <- pnorm(2, mean = 0, sd = 1)
P_lower <- pnorm(-1, mean = 0, sd = 1)

P_between <- P_upper - P_lower
print(P_between)

#6b
par(mfrow=c(2,2))# multi_figer --mf

hist(rnorm(10))
hist(rnorm(100))
hist(rnorm(1000))
x=rnorm(10000)
hist(x,main="histogram with 10000",xlab="values",ylab="feq")
hist(x,main="histogram with 10000",xlab="values",ylab="feq",freq= F)
lines(density(rnorm(10000)),col="red")


#7a
#regression
#corelation coiffecient
x=c(2,4,5,6,6,5,7,6,6,7)
y=c(4,4,5,6,5,5,4,4,5,4) #not reletion
y1= 2*x+5

cor(x,y1)
cor(y,x)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
rg=lm(y~x)

sx=0
ssx=0
ssy=0
sy=0
spxy=0
n=length(x)
for(i in 1:n){
  sx= sx+x[i]
  ssx= ssx+x[i]^2
  ssy= ssy+y[i]^2
  sy= sy+y[i]
  spxy= spxy+(x[i]*y[i])
  
}
v= spxy-(sx*sy)/n
v1= sqrt((ssx-(sx^2)/n)*(ssy-(sy^2)/n))
v2= (ssx-(sx^2)/n)

coef= v/v1
r=coef

b= v/v2
# ybar = a+ b xbar
a= sy/n - (b)*(sx/n)

#7b
# Create a sample data
sample_data <- c(4.5, 5.1, 4.8, 5.3, 4.9, 5.0, 5.2, 4.7, 5.1, 4.8)
# Perform a one-sample t-test
t_test_one_sample <- t.test(sample_data, mu = 5)
p_value <- t_test_one_sample$p.value


# Create two sample data sets
sample_data1 <- c(5.1, 5.3, 5.0, 5.2, 5.4, 5.1, 5.0, 5.2, 5.3, 5.1)
sample_data2 <- c(4.7, 4.8, 4.6, 4.9, 4.5, 4.8, 4.7, 4.9, 4.6, 4.8)

# Perform a two-sample t-test
t_test_two_sample <- t.test(sample_data1, sample_data2)



#7c
s =c("h","t")
p =c("h","t")

n=10
for( i in 1:(n-1)){
  s= outer(s,p,paste0)
  #print(s)
}
x=c(s)
x

#8a
ab= function(x){
  mean1= mean(x)
  return(mean1)
}
x=c(1,2,3)
mean11=ab(x)
mean11

# Define the function
add_numbers <- function(x, y) {
  sum <- x + y
  return(sum)
}
result <- add_numbers(3, 5)
print(result) 

# Define the function
one_sample_t_test <- function(sample_data, population_mean) {
  t_test_result <- t.test(sample_data, mu = population_mean)
  p_value <- t_test_result$p.value
  return(p_value)
}

# Test the function
sample_data <- c(4.5, 5.1, 4.8, 5.3, 4.9, 5.0, 5.2, 4.7, 5.1, 4.8)
population_mean <- 5
p_value <- one_sample_t_test(sample_data, population_mean)
print(p_value)

# Define the function
mean_sd <- function(x) {
  mean_value <- mean(x)
  sd_value <- sd(x)
  return(list(mean = mean_value, sd = sd_value))
}

# Test the function
sample_data <- c(5.1, 5.3, 5.0, 5.2, 5.4, 5.1, 5.0, 5.2, 5.3, 5.1)
result <- mean_sd(sample_data)
print(result)



#8b
# Define the function to obtain grade points for a vector of scores
get_grade_points <- function(score1) {
  grade_points=c()
  for(score in score1){
    if(score >= 80 & score <= 100) {
      grade_point <- 4.0
    }else if (score >= 75 & score < 80) {
      grade_point <- 3.75
    }else if (score >= 70 & score < 75) {
      grade_point <- 3.50
    }else if (score >= 65 & score < 70) {
      grade_point <- 3.25
    }else if (score >= 60 & score < 65) {
      grade_point <- 3.00
    }else if (score >= 65 & score < 70) {
      grade_point <- 3.25
    }else if (score >= 60 & score < 65) {
      grade_point <- 3.00
    }else if (score >= 55 & score < 60) {
      grade_point <- 2.75
    }else if (score >= 50 & score < 55) {
      grade_point <- 2.50
    }else if (score >= 45 & score < 50) {
      grade_point <- 2.25
    }else if (score >= 40 & score < 45) {
      grade_point <- 2
    }else {
      grade_point=("Score must be between 0 and 100.")
    }
    grade_points=c(grade_points,grade_point)
  }
  return(grade_points)
}

# Test the function with a vector of scores
scores <- c(95, 85, 75, 75, 85,90)
cdt= c(2,3,3,2,3,1)
grade_points <- get_grade_points(scores)
print(grade_points)

wcg= sum(grade_points*cdt)
cgpa= wcg/sum(cdt)



df=data.frame(scores,cdt)
a=df[,1]
grade <- get_grade_points(a)
print(grade)

wcgp= sum(grade*df[2])
cgpa1= wcg/sum(cdt)


#8c am
x=c(5,6,7,8,9)
l= length(x)
sum=0
for (i in 1:l){
  sum= sum+x[i]
}
am= sum/l
am


#veriance
data=c(1,3,4,5,4)
mean1= mean(data)
sum_sr = 0
n=length(data)
for(i in data){
  ss = (i - mean1)^2
  sum_sr = sum_sr + ss
}

variance = (sum_sr/(n-1))
var(data)

#standard_daviation
sd(data)
sd1=sqrt(variance)
print(sd1)

####
hist(data)
plot(density(data))
boxplot(data)

#
fahrenheit= function(x){
  f= (9/5)*x +32
  return(f)
}
c=0
fahr= fahrenheit(c)
fahr

age= c(63,37,41,56)
sex= c(1,1,0,1)
cp= c(3,2,1,1)
chol= c(233,250,204,236)
thal =c(150,187,172,178)
df1= data.frame(age,sex,cp,chol,thal)
getwd()
write.csv(df1,"C:/Users/Asus/Desktop/my/STA361_ R/class r/G.csv",row.names = FALSE)
df2= read.csv("C:/Users/Asus/Desktop/my/STA361_ R/class r/G.csv")

df2[,3]
df2[3]
df2[4]
df2[1]
hist(df2[,1])
hist(df2[,4])
plot(df2[,1],df2[,4])

cor(df2[,1],df2[,4])
cor(df2[1],df2[4])

lm(df2[,4]~df2[,1])

plot(df2[,1],df2[,4])
m=lm(df2[,4]~df2[,1])
abline(m, col = "red")

A= matrix(df2[,4],2,2)
# Calculate row totals
row_totals <- rowSums(A)
col_totals <- colSums(A)


Height= c(142,143,144,149,151,153,157,159,160,165,167,172,174)
Weight= c(42,42,42,45,48,49,50,52,53,58,62,65,67)
df= data.frame(Height,Weight)
write.csv(df,"C:/Users/Asus/Desktop/my/STA361_ R/class r/aa.csv",row.names = FALSE)
df1=read.csv("C:/Users/Asus/Desktop/my/STA361_ R/class r/aa.csv")

cr=cor(df1[1],df1[2])
plot(df1[,2],df1[,1],xlab="w",ylab="h")
a=df1[,1]
b=df1[,2]
plot(b,a,xlab="w",ylab="h")
m= lm(a~b)
abline(m)


max_min= function(x){
  max=x[1]
  min=x[1]
  n=length(x)
  for(i in 1:n){
    if(max<x[i]){
      max=x[i]
    }
    if(min>x[i]){
      min=x[i]
    }
  }
  return(list(max1=max,min1=min))
}

aaa=c(12,12,23,4,23,22,11,10,44,15)
aaa=df1[,1]
max_min(aaa)


p=.4
n=5
exl= dbinom(3,n,p)# exactly 3 survive

cc= dbinom(5,n,p)+dbinom(4,n,p)+dbinom(3,n,p)+dbinom(2,n,p) # atleast 2
cc
mm=pbinom(5,n,p)- pbinom(1,n,p) # atleast 2 >>2,3,4,5
mm

mos= pbinom(2,n,p) #at most 2  #0,1,2
mos

non= dbinom(0,n,p) #none survive  #0,1,2
non



p=.4
n=15
exl= dbinom(5,n,p)# exactly 5 survive

mm=pbinom(15,n,p)- pbinom(9,n,p) # atleast 10 >> p mean oi bindoo soho
mm
mm=pbinom(8,n,p)- pbinom(2,n,p) # 3 tp 8 >> p mean oi bindoo soho
mm
mos= pbinom(2,n,p) #at most 2  #0,1,2
mos

non= dbinom(0,n,p) #none survive  #0,1,2
non



x= rnorm(1000,100,225)
p= pnorm(80,100,225)
p
p= pnorm(90,100,225)-pnorm(75,100,225) # binomial hole 74 hoto
p

q= qnorm(.05,100,225)
q



# Specify shape and rate parameters
alpha <- 2
beta <- 2

# Generate a sequence of x values
x <- seq(0, 20, length.out = 1000)

# Calculate the PDF values for gamma distribution
pdf_values <- dgamma(x, shape = alpha, rate = beta)

# Plot the density curve
plot(x, pdf_values, type = "l", lwd = 2, col = "blue",
     main = "Density Curve for Gamma(2, 2)",
     xlab = "X", ylab = "Density")





# Generate a sequence of w values
w <- seq(0, 100, by = 0.1)

# Calculate the PDF values for the given w values
pdf_values <- numeric(length(w))
pdf_values[w < 40] <- 0
pdf_values[w >= 40 & w < 65] <- w[w >= 40 & w < 65]^2
pdf_values[w >= 65] <- 1

# Plot the PDF
plot(w, pdf_values, type = "l", lwd = 2, col = "blue",
     main = "Piecewise PDF Function",
     xlab = "w", ylab = "F(w)")



# Generate a sequence of w values
w <- seq(0, 100, by = 0.1)

# Calculate the PDF values for the given w values
pdf_values <- numeric(length(w))
pdf_values[w < 40] <- 0
pdf_values[w >= 40 & w <= 65] <- (w[w >= 40 & w <= 65]^2 - 80 * w[w >= 40 & w <= 65] + 1600) / 1250
pdf_values[w > 65 & w <= 90] <- (-w[w > 65 & w <= 90]^2 + 180 * w[w > 65 & w <= 90] + 6850) / (1250 * 100)
pdf_values[w > 90] <- 1

# Plot the PDF
plot(w, pdf_values, type = "l", lwd = 2, col = "blue",
     main = "Piecewise PDF Function",
     xlab = "w", ylab = "F(w)")
