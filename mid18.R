#2c : generating regular sequences
a= 1:10
a
b =seq(1,10)
b =seq(from=1,to=10,by=2)
b
# Repeat the sequence 1, 2, 3 twice
rep(1:3, times = 2)
rep(c(1,2,3), times = 2)
# Repeat each element of 1, 2, 3 twice
rep(1:3, each = 2)



#3a :solving linear equations in R

# 2x+3y = 8
# 4x+y = 10
A= matrix(c(2,3,4,1),nrow=2,byrow=T)
A
B= c(8,10)
B
sol = solve(A,B)
sol
sol1 = solve(A) %*% B
sol1

#3b my way
x= c(10, 12, 23, 23, 16, 23, 21, 16)
xbar= mean(x)
sd_x= sd(x)
cv= (sd_x/xbar) * 100
cv
sprintf("cv = %f",cv)

#3b


# Define a function to calculate the coefficient of variation
coefficient_of_variation <- function(data) {
  # Calculate the mean of the data
  mean_value <- mean(data)
  
  # Calculate the standard deviation of the data
  standard_deviation <- sd(data)
  
  # Calculate the coefficient of variation
  cv <- (standard_deviation / mean_value) * 100
  
  return(cv)
}

# Example data set
observations <- c(10, 12, 23, 23, 16, 23, 21, 16)

# Compute the coefficient of variation
cv_result <- coefficient_of_variation(observations)

# Print the result
cat("Coefficient of Variation:", cv_result, "%\n")






