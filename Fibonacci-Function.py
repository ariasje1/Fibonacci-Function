def fib(number):
    """
    Calculates the Fibonacci number at the specified position in the Fibonacci sequence.
    Parameter: number -- a positive integer representing the position in the Fibonacci sequence
    Returns: fib_number -- an integer representing the Fibonacci number at the specified position
    """
    # Initializing variables
    first_number = 1
    second_number = 1
    fib_number = 1
    for n in range(1, number + 1):
        if n == 1 or n == 2:
            fib_number = 1  # The first two Fibonacci numbers are always 1
        else:
            # Calculate the next Fibonacci number
            fib_number = first_number + second_number
            # Update the two preceding numbers for the next iteration
            first_number = second_number
            second_number = fib_number
    return fib_number


print(fib(int(input())))

# Examples
print(fib(5))  # Outputs 5
print(fib(10)) # Outputs 55 
