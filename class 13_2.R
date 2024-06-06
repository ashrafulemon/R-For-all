
s =c("h","t")
p =c("h","t")

n=3
for( i in 1:(n-1)){
  s= outer(s,p,paste0)
}

x=c(s)
n1=length(x)
n1
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

