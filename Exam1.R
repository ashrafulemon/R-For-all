
# Ans to the qus no 5

#i
Height= c(142,143,144,149,151,153,157,159,160,165,167,172,174)
Weight= c(42,42,42,45,48,49,50,52,53,58,62,65,67)


plot(Weight,Height,main="scatter plot weight on Height",xlab="Weight in kg",
     ylab="Height in inch")
l=lm(Height~Weight)
abline(l)

#ii
student=0
for(i in 1:length(Height)){
  if(Height[i]>150 & Weight[i]<60){
    student=student+1
  }
}
print(sprintf(" %d students Height greater than 150 inch and weight less then 60",student))


# # Ans to the qus no 6

my_funtn= function(x){
  n=(2*x)-1
  vl= seq(1,n,2)
  sum=0
  for( i in 1:length(vl)){
    sum=sum+vl[i]
  }
  return(sum)
}
# Please give n
#suppose n= 5
n=5
add=my_funtn(n)
add


## Ans to the qus no 7

year1= c(42,42,42,45,48,49,50,52,53,48,49,50,62,65,67)
year4= c(50,51,53,53,54,57,58,55,50,52,54,62,63,65,70)

plot(year1,type="l",col="red")
lines(year4,type="l",col="blue")

legend(12,60,c("year1","year4"),fill=c("red","blue"))

