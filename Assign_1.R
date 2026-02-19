# Part A ---------------------------------------------------------

n <- 1.0
x<-1.0
i<-0
cat(paste("i", "x", "n\n", sep="\t\t"))
while (i < 1025) {
  n<-n*2.0
  x<-1.0/n

  if (i > 1000){
    
    if (x != 0){
      cat(paste( i, x, n, "\n", sep="\t"))
    }else{
      cat(paste( i, x, n, "\n", sep="\t\t"))
    }
  }

  
  i<-i+1
}

# Part B ----------------------------------------------------------
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

# Part C ----------------------------------------------------------
data("mtcars")
names(mtcars)
head(mtcars)
str(mtcars)
summary(mtcars)

# convert vs to factor
mtcars$vs = cut(mtcars$vs, 2, labels = c("V-shaped", "Straight"))
head(mtcars)

# Plot mpg vs hp
plot(
  main = "MPG vs HP",
  x = mtcars$mpg,
  xlab = "Miles per Gallon",
  y = mtcars$hp,
  ylab = "Horse Power"
)

# find far left and far right data points

# green group
mtcars[mtcars$mpg < 12.5,]

# red group
mtcars[mtcars$mpg > 30 & mtcars$hp < 100,]

