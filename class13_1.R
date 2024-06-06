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
2^10

s =c("h","t")
p =c("h","t")

n_coin=3
for( i in 1:(n_coin-1)){
  s= outer(s,p,paste0)
  
}
s
c(s)
a=c(s)
a

n=length(s)
n_h= sum(grepl("h",a))
n_h= sum(grepl("hh",a)) # ans is wrong

a[3][1]


grepl("hh",a[3])
sum(grepl("hh",a[3]))
sum(grepl("hh",a[2]))
sum(grepl("h",a[1]))
sum(grepl("h",a[[1]][3]))
sum(grepl("h",a[3]))




s =c("h","t")
p =c("h","t")

n_coin=3
for( i in 1:(n_coin-1)){
  s= outer(s,p,paste0)
  
}
s
c(s)
a=c(s)
a



n=length(a)
a[1]
abc= 0
for (i in 1:n){
  lt= unlist(strsplit(a[i],""))
  #lt= unlist(strsplit(a[1],""))
  lt
  #n1= length(a[i])
  n1= 3
  count1=0;
  for(j in 1:n1){
    lt[1]
    if(lt[j]=="h"){
      count1=count1+1
    }
  }
  if(count1>=2){
    abc=abc+1
  }
}
p= abc/8
p



for(i in 1:n){
  n_h= sum(grepl("hh",a[i]))
}


n_h= sum(grepl("hhh",a))
n_h




s =c(1,2,3,4,5,6)
p =c(1,2,3,4,5,6)

n_dias=2
for( i in 1:(n_dias-1)){
  s= outer(s,p,paste0)
  
}
s
c(s)
a=c(s)
a



##

bb= a[which(lengths(regmatches(a,gregexpr("h",a)))==2)]



## my work
a[1]
a[[1]]
sum1=0
for( i in 1:(n_coin-1)){
  for(j in 10){
    a[i][j]
  }
}









#regression
#corelation coiffecient
x=c(2,4,5,6,6,5,7,6,6,7)
y=c(4,4,5,6,5,5,4,4,5,4) #not reletion
y1= 2*x+5



cor(x,y1)
cor(x,y)
rg=lm(y~x)
a=function(b){
  
}

sum1=0
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
b
# ybar = a+ b xbar
a= sy/n - (b)*(sx/n)
a
