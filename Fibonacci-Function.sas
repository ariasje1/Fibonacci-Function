%macro fib(number);
  %local first_number second_number fib_number i;

  /* Initialize the first two Fibonacci numbers */
  %let first_number = 1;
  %let second_number = 1;
  %let fib_number = 1;

  /* Loop to calculate the Fibonacci number */
  %do i = 3 %to &number;
    %let fib_number = %eval(&first_number + &second_number);
    %let first_number = &second_number;
    %let second_number = &fib_number;
  %end;

  /* Print the result */
  %put The Fibonacci number at position &number is &fib_number;
%mend fib;

/* Examples*/
%fib(5);  /* Outputs 5 */
%fib(10); /* Outputs 55 */
