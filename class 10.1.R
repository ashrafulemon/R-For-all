# Define the vector
x <- c(10, 2, 5, 3, 4)

# Check if there are any non-positive numbers
if (any(x <= 0)) {
  stop("Geometric mean is not defined for non-positive numbers.")
}

# Calculate the length of the vector
n <- length(x)

# Initialize the product variable
pd1 <- 1

# Calculate the product of all elements in the vector
for (i in 1:n) {
  pd1 <- pd1 * x[i]
}

# Print the product (optional)
print(pd1)

# Calculate the geometric mean
gm <- pd1^(1/n)

# Print the geometric mean
gm



# Define the vector
x <- c(10, 2, 5, 3, 4)

# Check if there are any non-positive numbers
if (any(x <= 0)) {
  stop("Geometric mean is not defined for non-positive numbers.")
}

# Calculate the geometric mean
gm <- exp(mean(log(x)))

# Print the geometric mean
gm

