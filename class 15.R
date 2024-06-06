
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
mean_x



x= rnorm(10,5,1)
x
t.test(x,mu=mean_x)
qt(.025,9) # critical rigion








