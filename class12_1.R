# r for simulation random veriates.
# d for pdf, 
# p for cdf, 
# q for quantile function, 


# rnorm()
# rnorm(n,mean,sd)
# n = how much random number can be generated ?

rnorm(n= 10, mean= 5, sd= 1.5)
rnorm(10,5,1.5)
rnorm(1)  #mean=0, sd=1


a= rnorm(10) #bydefult mean=0, sd=1
a

sqrt(rnorm(n=20, mean= 200, sd= 10))
b=rnorm(n=20, mean= 200, sd= 10)
b
sqrt(b)



# dnorm()
# dnorm(x,mean,sd)
# x = which point probabilily we need ?
# pdf

dnorm(x=.5, mean=1,sd=1)
dnorm(x=.5, mean=1,sd=0)
dnorm(x=5, mean=0,sd=1)

dnorm(x=seq(-3,3,.1),mean=0,sd=1) # symetric                -> mean =0
dnorm(x=seq(-3,3,.1),mean=0,sd=2) # symetric                -> mean =0

dnorm(seq(-3,3,.1),1,1)           # negatively skeweed      -> mean >1
dnorm(seq(-3,3,.1),-1,1)          # positively skeweed      -> mean <1

dnorm(seq(-4,4,.5),0,1)


midel_value_probability =dnorm(x=0,mean=0,sd=1)
midel_value_probability
pdf = dnorm(2,0,1)
pdf





# pnorm()
# pnorm(x,mean, sd)
# x mean that point which cdf is calculate 
# cdf ->cumulative probability density
# that value is % , what percentage .
# given z score and find % ->(1-a)
# how much % of  data fall less then equal in that point

pnorm(180,mean=178, sd= 1)
pnorm(180,mean=178, sd= 6)
pnorm(160,mean=178, sd= 1)
pnorm(100,mean=178, sd= 1)

pnorm(seq(160,200,5),mean=180, sd= 10)
pnorm(seq(-3,3,.5),0,1)


pnorm(1.96,0,1)
pnorm(1.96)
pnorm(1.68)
pnorm(1.99)

pnorm(4.96) 
pnorm(-1.96)


b= pnorm(5,4,2)-pnorm(2,2,1)
b= pnorm(5,4,2)-pnorm(2,4,2)
b
pnorm(1.96)  




#qnorm()
#if we want to the find x,for top 95% ,
#qnorm(p,mean,sd) #p for parcentage

qnorm(p=.67,mean=178,sd=6)
qnorm(p=.90,mean=178,sd=6)
qnorm(p=.95,mean=178,sd=6)
qnorm(p=.98,mean=178,sd=6)

qnorm(p=seq(0,1,.1),mean=0,sd=1)
qnorm(p=seq(.8,.99,.01),mean=100,sd=1)

qnorm(0.025)
qnorm(0.05)




#same set of random variable

set.seed(1) # 1 any number, 1,3,4,6,......
x=rnorm(10)
x
x=rnorm(10) # different
x
set.seed(1) # previous first one
x=rbinom(10,5,.5)
x=rpois(10,5)
x
