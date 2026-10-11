# COP2073c-Programming Assignment 6
# R. Williams
# 10/11/2026
# R script to test a vectorized custom function with a try block

# Function to square each number and add 5
sqAddFive <- function(x) {
  
# Perform the calculation using vectorization
  result <- try(x^2 + 5, silent = TRUE)
  
# Handle non-numeric values
  if (inherits(result, "try-error")) {
    return(rep(NA, length(x)))
  }
  
  return(result)
}

# Test 1: Numeric vector
numbers <- c(1, 2, 3, 4, 5)

test1 <- sapply(list(numbers), sqAddFive)

cat("Test 1: Numeric Vector\n")
print(test1)

# Test 2: Vector containing a string
mixed_values <- c(1, 2, "hello", 4, 5)

test2 <- sapply(list(mixed_values), sqAddFive)

cat("\nTest 2: Vector with a String\n")
print(test2)

