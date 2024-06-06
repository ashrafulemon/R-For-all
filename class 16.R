x= c(2,3,3,5,6,6,6)

n= length(x)
mod=0
max_c=0
for( i in 1:n){
  c=0
  for(j in 1:n){
    if(x[i]== x[j]){
      c= c+1
    }
  }
  if(max_c< c){
    mod = x[i]
    max_c = c
  }
}
mod

