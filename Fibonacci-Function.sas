/*  Calculates the Fibonacci number at the specified position in the Fibonacci sequence.
    Parameter: number -- a positive integer representing the position in the Fibonacci sequence
    Returns: fib_number -- an integer representing the Fibonacci number at the specified position
*/
%macro fib(number);

  /* Initialize variables */
  %let first_number = 1;
  %let second_number = 1;
  %let fib_number = 1;

  /* Loop to calculate the Fibonacci number */
  %if &number = 1 or &number = 2 %then %do;
    /* The first two Fibonacci numbers are always 1 */
    %let fib_number = 1;
  %end;
  %else %do;
    /* Iterate from 3 to the specified number */
    %do n = 3 %to &number;
      /* Calculate the next Fibonacci number */
      %let fib_number = %eval(&first_number + &second_number);
      /* Shift the last two numbers to prepare for the next iteration */
      %let first_number = &second_number;
      %let second_number = &fib_number;
    %end;
  %end;

  /* Print the result */
  %put The Fibonacci number at position &number is &fib_number;

%mend fib;

/* Examples*/
%fib(5);  /* Outputs 5  */
%fib(10); /* Outputs 55 */
