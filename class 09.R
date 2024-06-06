y = scan()

data()
df1= iris
df1[1:6,]
View(df1)
head(df1)
tail(df1)
nrow(df1)
ncol(df1)

if(4>2){
   print(2323)
}
else{   #not work
   print("wsewe")
}

print(3434)

a=7
b=9
if(a>b) max1= a
max1=b

if(a<b){
  max2=b
}

max2=b
sprintf("this is the maximum value %d",max2)# ok
sprintf("this is the maximum value %d ok ok",max2)
print("this is the maximum value ",max2) #not ok
cat("this is the maximum value ",max2)
