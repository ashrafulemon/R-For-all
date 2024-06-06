mean(c(0,10,NA,10),na.rm=T)
mean(c(10,NA,10))
#mean(12,3,4) not work


x= c(1,9,3,4,5,6,2,8,9,10)
mean(x)
#mean #gooooood
sum1=0
for(i in 1:length(x)){
  sum1= sum1 + x[i]
  #print("ased")
}
sum1

am= sum1/length(x)
am

#median#gooooood

10/2
11/2
10%%2
11%%2


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







#mood#gooooood

x= c(1,2,3,4,5,6,7,8,9,10,5,6,5,7)
x= c(1,1,2,2,3,4,4,3,5,6,5,6,2,3,3,2)
data = x
x=unique(x)
x
mode1=0
max=0
for (i in x) {
  count=sum(i == data)
  
  if (count > max) {
    mode1=i
    max=count
  }
}
print(mode1)
# anothger way

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
