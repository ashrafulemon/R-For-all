
s =c("h","t")
p =c("h","t")

n_coin=3
for( i in 1:(n_coin-1)){
  s= outer(s,p,paste0) # prothom line s =2 ta, 2nd loop a s =4 ta, p 2 ta,
  
}
s
c(s)

a=c(s) #convert array to vecyor
a



n=length(a)
n
a[3]
abc= 0
i=3

a[3]

aaa = strsplit(a[3],"") #out give list
aaa[[1]][3]=="h"
bbb = unlist(strsplit(a[3],""))

aaa[[1]][1]
bbb[1]


lt= unlist(strsplit(a[3],""))
lt= unlist(strsplit(a[3],""))



for (i in 1:n){
  lt= unlist(strsplit(a[i],""))
  #lt= unlist(strsplit(a[1],""))
  lt
  lt[2]
  lt[3]
  #n1= length(a[i])
  n1= 3
  count1=0;
  for(j in 1:n1){
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
