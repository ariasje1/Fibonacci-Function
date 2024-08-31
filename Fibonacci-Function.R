# Calculates the Fibonacci number at the specified position in the Fibonacci sequence.
# 
# Parameter: 
#   number -- a positive integer representing the position in the Fibonacci sequence
#
# Returns: 
#   fib_number -- an integer representing the Fibonacci number at the specified position
fib <- function(number) {
  
  # Initialize the first two Fibonacci numbers and a variable to hold the current Fibonacci number
  first_number <- 1  # The first Fibonacci number
  second_number <- 1 # The second Fibonacci number
  fib_number <- 1    # Variable to store the current Fibonacci number
  
  # Iterate from 1 to the specified number
  for (n in 1:number) {
    # For the first two positions, the Fibonacci number is 1
    if (n == 1 || n == 2) {
      fib_number <- 1
    } else {
      # Update the Fibonacci number by adding the previous two numbers
      fib_number <- first_number + second_number
      # Shift the last two numbers to prepare for the next iteration
      first_number <- second_number
      second_number <- fib_number
    }
  }
  
  # Return the n-th Fibonacci number
  return(fib_number)
}

#Examples
fib(5)  # Outputs 5
fib(10) # Outputs 55
