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
            fib_number = 1
        elif n == 3:
            fib_number = first_number + second_number
        else:
            first_number = second_number
            second_number = fib_number
            fib_number = first_number + second_number
    return fib_number


print(fib(int(input())))
