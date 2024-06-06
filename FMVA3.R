
#soectral decomposition
# A= Sum( l * ( e %*% e' ) )

A= matrix(c(13,-4,2,-4,13,-2,2,-2,10),3,3,byrow=T)
A

#non singuler
det(A)

#for eigen vectors and values
ev = eigen(A)
ev

l= ev$values
l

v=ev$vectors
v

v[1]
v[,1]
v[1,]

sd= (l[1] * v[,1] %*% t(v[,1]))+
    (l[2] * v[,2] %*% t(v[,2]))+
    (l[3] * v[,3] %*% t(v[,3]))
sd

sum=0;
for(i in 1:3){
  sum=sum+(l[i] * v[,i] %*% t(v[,i]))
}
sum




