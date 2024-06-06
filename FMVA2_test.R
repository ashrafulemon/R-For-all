#install.packages("MVN")
library(MVN)

# Generate a sample dataset
data <- data.frame(
  x1 = rnorm(100),
  x2 = rnorm(100),
  x3 = rnorm(100)
)

# Perform the multivariate normality test
result <- mvn(data, mvnTest = "royston")

# Print the result
print(result)




#install.packages("mvnormtest")
library(mvnormtest)

# Generate a sample dataset
data <- data.frame(
  x1 = rnorm(100),
  x2 = rnorm(100),
  x3 = rnorm(100)
)
data= as.matrix(data)
# Perform the Shapiro-Wilk test for multivariate normality
result <- mshapiro.test(data)
print(result)

data <- matrix(rnorm(1000), ncol = 5)
# Perform the Shapiro-Wilk test for multivariate normality
result <- mshapiro.test(data)

# Print the result
print(result)


# Install and load the "psych" package
#install.packages("psych")
library(psych)

# Generate a sample dataset
data <- data.frame(
  x1 = rnorm(100),
  x2 = rnorm(100),
  x3 = rnorm(100)
)

# Perform Mardia's test for multivariate normality
result <- mardiaTest(data)

# Print the result
print(result)




# Install and load the "normtest" package
#install.packages("normtest")
library(normtest)

# Generate a sample dataset
data <- matrix(rnorm(1000), ncol = 5)

# Perform the multivariate normality test
result <- mnormt(data)

# Print the result
print(result)



