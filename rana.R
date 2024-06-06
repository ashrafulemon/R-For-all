
n <- 20    # number of trials
p <- 0.3   # probability of success

# Calculate the cumulative probabilities P(X <= 6) and P(X <= 3)
P_X_leq_7 <- pbinom(6, size = n, prob = p)
P_X_leq_3 <- pbinom(2, size = n, prob = p)

# Calculate P(3 < X <= 7)
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
print(result)

n=20
p=.3
P_X4 <- dbinom(4, size = n, prob = p)
P_X5 <- dbinom(5, size = n, prob = p)
P_X6 <- dbinom(6, size = n, prob = p)

# Sum these probabilities to get P(3 < X < 7)
P_between <- P_X4 + P_X5 + P_X6

# Print the result
print(P_between)


