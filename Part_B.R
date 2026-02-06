n = c(1:10)
Factorial_n = factorial(n)
Approximation = (n/exp(1))^n * (2*pi*n)^(1/2)
Absolute_Err = abs(Factorial_n - Approximation)
Percent_Rel_Err = Absolute_Err / Factorial_n * 100

Part_B_DF = data.frame(
  n,
  Factorial_n    = formatC(Factorial_n,    digits = 2, format = "fg"),
  Approximation = formatC(Approximation,   digits = 2, format = "fg"),
  Absolute_Err  = formatC(Absolute_Err,    digits = 2, format = "fg"),
  Percent_Rel_Err = formatC(Percent_Rel_Err, digits = 2, format = "fg")
)

