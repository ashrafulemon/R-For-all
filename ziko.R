# Write an R program to construct the sample space 
#     for an experiment of tossing a coin 10 times.
num_tosses <- 10
outcomes <- c("H", "T")
s_space <- c("")

for (i in 1:num_tosses) {
  n_space <- c()
  for (s in s_space) {
    for (out in outcomes) {
      new_seq <- paste0(s, out)
      n_space <- c(n_space, new_seq)
      #print(n_space)
    }
  }
  s_space <- n_space
}
print(s_space)



#new
x=c(5,6,7,8,9)
l= length(x)
sum=1
for (i in 1:l){
  sum= sum*x[i]
}
gm= sum^(1/l)
gm

x=c(5,6,7,8,9)
l= length(x)
sum=0
for (i in 1:l){
  sum= sum+(1/x[i])
}
hm= l/sum
hm


#new
s =c("h","t")
p =c("h","t")

n=10
for( i in 1:(n-1)){
  s= outer(s,p,paste0)
  #print(s)
}
x=c(s)
x

for(i in 1:0){
  print(i)
}
