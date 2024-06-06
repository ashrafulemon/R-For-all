#install.packages("Matrix")
#library(Matrix)
#CSV stands for Comma-Separated Values
#data <- read.csv("F:/Data/data.csv" )
  #A repetitive structure in programming refers to a control flow construct
  #that allows code to be executed repeatedly based on a condition or
  #a set number of times. These structures are often called loops.
  #There are several types of loops in R and other programming languages,
  #including for loops, while loops, and repeat loops.


#3a
x= 1
while(x<5){
  print(x)
  x=x+1
}
x=1
repeat{
  print(x)
  x=x+1
  if(x>=5){
    break
  }
}

a= 1:10
a
for( i in 1:10){
  x= sqrt(a[i])
  print(x)
}
#generate vector output
v= c()
for(i in 1:10){
  a=sqrt(i)
  v=c(v,a)
}
v

#3c how do you plot the functin f(x)= (x-2)^2 using  the curve 
#function where the range of x will be -4 to 8?
# Define the function
f <- function(x){
  (x - 2)^2
}
curve(f, from = -4, to = 8, xlab = "x", ylab = "f(x)", main = "Plot of f(x) = (x-2)^2")
curve((x - 2)^2, from = -4, to = 8, xlab = "x", ylab = "f(x)", main = "Plot of f(x)")

# Generate x values from -4 to 8
x_values <- seq(-4, 8, length = 100)
y_values <- (x_values - 2)^2

boxplot(y_values, main = "Box Plot of f(x) = (x-2)^2")
pie(y_values, main = "Pie Chart of f(x) = (x-2)^2")
qqnorm(y_values)
qqline(y_values)



#4a 
a = matrix(1:12, 3,4)
a
a[2,3]
a[3,4]
a[,2]
a[1,]

#4b

a= c(1,1,3,5,2,6,-2,-1,-3)
a= matrix(a,3,3,byrow=T)
a
trp = t(a)
trp
det(a)
inv= solve(a)


# Create a vector
vec <- c(5, 3, 8, 2, 1)
sorted_vec <- sort(vec)

print(sorted_vec)

# Create a vector
vec <- c(5, 3, 8, 2, 11)
ind <- order(vec)
s_vec <- vec[ind]
print(s_vec)


# Custom implementation of Insertion Sort
insertion_sort <- function(vec) {
  for (i in 2:length(vec)) {
    key <- vec[i]
    j <- i - 1
    while (j > 0 && vec[j] > key) {
      vec[j + 1] <- vec[j]
      j <- j - 1
    }
    vec[j + 1] <- key
  }
  return(vec)
}

# Create a vector
vec <- c(5, 3, 8, 2, 1)

# Sort the vector using insertion sort
sorted_vec <- insertion_sort(vec)

# Print the sorted vector
print(sorted_vec)



# Custom implementation of Selection Sort
selection_sort <- function(vec) {
  n <- length(vec)
  for (i in 1:(n - 1)) {
    min_idx <- i
    for (j in (i + 1):n) {
      if (vec[j] < vec[min_idx]) {
        min_idx <- j
      }
    }
    if (min_idx != i) {
      temp <- vec[i]
      vec[i] <- vec[min_idx]
      vec[min_idx] <- temp
    }
  }
  return(vec)
}

# Create a vector
vec <- c(5, 3, 8, 2, 1)

# Sort the vector using selection sort
sorted_vec <- selection_sort(vec)

# Print the sorted vector
print(sorted_vec)

#selection sort vs insertion sort vs bubble sort



#5a
data = read.csv("asdf.csv")
write.csv(data,"asdas.csv")


#5b
a= rnorm(100,0,1)
a

n <- 20
p <- 0.45
x <- 5

# Calculate the probability P(X = 5)
prob <- dbinom(x, size = n, prob = p)
prob <- dbinom(x, n, p)
print(prob)

# Calculate the cumulative probabilities
P_upper <- pnorm(2, mean = 0, sd = 1)
P_lower <- pnorm(-1, mean = 0, sd = 1)

P_between <- P_upper - P_lower
print(P_between)




#6b

par(mfrow=c(2,2))# multi_figer --mf

hist(rnorm(10))
hist(rnorm(100))
hist(rnorm(1000))
x=rnorm(10000)
hist(x,main="histogram with 10000",xlab="values",ylab="feq")
hist(x,main="histogram with 10000",xlab="values",ylab="feq",freq= F)
lines(density(rnorm(10000)),col="red")


#7a
#regression
#corelation coiffecient
x=c(2,4,5,6,6,5,7,6,6,7)
y=c(4,4,5,6,5,5,4,4,5,4) #not reletion
y1= 2*x+5



cor(x,y1)
cor(y,x)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
rg=lm(y~x)
a=function(b){
  
}

sum1=0
sx=0
ssx=0
ssy=0
sy=0
spxy=0
n=length(x)
for(i in 1:n){
  sx= sx+x[i]
  ssx= ssx+x[i]^2
  ssy= ssy+y[i]^2
  sy= sy+y[i]
  spxy= spxy+(x[i]*y[i])
  
}
v= spxy-(sx*sy)/n
v1= sqrt((ssx-(sx^2)/n)*(ssy-(sy^2)/n))
v2= (ssx-(sx^2)/n)

coef= v/v1
r=coef

b= v/v2
b
# ybar = a+ b xbar
a= sy/n - (b)*(sx/n)
a

#7b
# Create a sample data
sample_data <- c(4.5, 5.1, 4.8, 5.3, 4.9, 5.0, 5.2, 4.7, 5.1, 4.8)

# Perform a one-sample t-test
t_test_one_sample <- t.test(sample_data, mu = 5)
p_value <- t_test_one_sample$p.value
print(t_test_one_sample)

# Create two sample data sets
sample_data1 <- c(5.1, 5.3, 5.0, 5.2, 5.4, 5.1, 5.0, 5.2, 5.3, 5.1)
sample_data2 <- c(4.7, 4.8, 4.6, 4.9, 4.5, 4.8, 4.7, 4.9, 4.6, 4.8)

# Perform a two-sample t-test
t_test_two_sample <- t.test(sample_data1, sample_data2)

# Print the results
print(t_test_two_sample)



#7c
s =c("h","t")
p =c("h","t")

n=10
for( i in 1:(n-1)){
  s= outer(s,p,paste0)
  #print(s)
}
x=c(s)
x



#8a

ab= function(x){
  mean1= mean(x)
  return(mean1)
}
x=c(1,2,3)
mean11=ab(x)
mean11

# Define the function
add_numbers <- function(x, y) {
  sum <- x + y
  return(sum)
}
result <- add_numbers(3, 5)
print(result) 

# Define the function
one_sample_t_test <- function(sample_data, population_mean) {
  t_test_result <- t.test(sample_data, mu = population_mean)
  p_value <- t_test_result$p.value
  return(p_value)
}

# Test the function
sample_data <- c(4.5, 5.1, 4.8, 5.3, 4.9, 5.0, 5.2, 4.7, 5.1, 4.8)
population_mean <- 5
p_value <- one_sample_t_test(sample_data, population_mean)
print(p_value)

# Define the function
mean_sd <- function(x) {
  mean_value <- mean(x)
  sd_value <- sd(x)
  return(list(mean = mean_value, sd = sd_value))
}

# Test the function
sample_data <- c(5.1, 5.3, 5.0, 5.2, 5.4, 5.1, 5.0, 5.2, 5.3, 5.1)
result <- mean_sd(sample_data)
print(result)



#8b
# Define the function to obtain grade point
get_grade_point <- function(score) {
  if (score >= 90 && score <= 100) {
    grade_point <- 4.0
  } else if (score >= 80 && score < 90) {
    grade_point <- 3.0
  } else if (score >= 70 && score < 80) {
    grade_point <- 2.0
  } else if (score >= 60 && score < 70) {
    grade_point <- 1.0
  } else if (score >= 0 && score < 60) {
    grade_point <- 0.0
  } else {
    grade_point=("Score must be between 0 and 100.")
  }
  
  # Return the grade point
  return(grade_point)
}

# Test the function with different scores
score1 <- 955
score2 <- 85
score3 <- 75
score4 <- 65
score5 <- 55

# Print the grade points
print(paste("Grade point for score", score1, "is", get_grade_point(score1)))
print(paste("Grade point for score", score2, "is", get_grade_point(score2)))
print(paste("Grade point for score", score3, "is", get_grade_point(score3)))
print(paste("Grade point for score", score4, "is", get_grade_point(score4)))
print(paste("Grade point for score", score5, "is", get_grade_point(score5)))


# Define the function to obtain grade points for a vector of scores
get_grade_points <- function(score1) {
  grade_points=c()
  for(score in score1){
      if(score >= 90 & score <= 100) {
        grade_point <- 4.0
      }else if (score >= 80 & score < 90) {
        grade_point <- 3.0
      }else if (score >= 70 & score < 80) {
        grade_point <- 2.0
      }else if (score >= 60 & score < 70) {
        grade_point <- 1.0
      }else if (score >= 0 & score < 60) {
        grade_point <- 0.0
      }else {
        grade_point=("Score must be between 0 and 100.")
      }
    grade_points=c(grade_points,grade_point)
  }
  
  return(grade_points)
}

# Test the function with a vector of scores
scores <- c(95, 85, 75, 765, 55,90)
grade_points <- get_grade_points(scores)
print(grade_points)





#8c am
x=c(5,6,7,8,9)
l= length(x)
sum=0
for (i in 1:l){
  sum= sum+x[i]
}
am= sum/l
am



year=2100
if(year%%4==0 & year%%100!=0 | year%%400==0){
  sprintf("Leap year")
}else{
  sprintf("Not leap year")
}




n <- 20    # number of trials
p <- 0.3   # probability of success

# Calculate the cumulative probabilities P(X <= 6) and P(X <= 3)
P_X_leq_7 <- pbinom(6, size = n, prob = p)
P_X_leq_3 <- pbinom(2, size = n, prob = p)
P_between <- P_X_leq_7 - P_X_leq_3
print(P_between)

# Calculate the probabilities P(X = 3), P(X = 4), P(X = 5), and P(X = 6)
P_X3 <- dbinom(3, size = n, prob = p)
P_X4 <- dbinom(4, size = n, prob = p)
P_X5 <- dbinom(5, size = n, prob = p)
P_X6 <- dbinom(6, size = n, prob = p)
P_between <- P_X3 + P_X4 + P_X5 + P_X6
print(P_between)

# Calculate p(3 < x < 7) for binomial distribution
result <- pbinom(6, size = 20, prob = 0.3) - pbinom(3, size = 20, prob = 0.3)

n=20
p=.3
P_X4 <- dbinom(4, size = n, prob = p)
P_X5 <- dbinom(5, size = n, prob = p)
P_X6 <- dbinom(6, size = n, prob = p)
P_between <- P_X4 + P_X5 + P_X6


