# Create a data frame
#apply(X, MARGIN, FUN, ...)


df <- data.frame(x = c(1, 2, 3), y = c(4, 5, 6))

# Apply mean function to columns
apply(df, 2, mean)

# Create a matrix of test scores
scores <- matrix(c(80, 90, 75, 85, 95, 70, 60, 65, 75), nrow = 3, byrow = TRUE)
colnames(scores) <- c("Math", "Science", "English")
rownames(scores) <- c("Alice", "Bob", "Charlie")

# View the matrix
print(scores)
# Apply mean function to columns (subjects)
avg_scores <- apply(scores, 2, mean) # 2 means column mean , 1 means row mean.

# View the average scores
print(avg_scores)
