
my= function(y){
  n=(2*y)-1
  
  vl= seq(1,n,2)
  sum=0
  
  for( i in 1:length(vl)){
    sum=sum+vl[i]
  }
  
  return(sum)
}

su=my(3)
su

