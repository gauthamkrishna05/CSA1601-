if (interactive()) {
  a <- as.numeric(readline("Enter first number: "))
  b <- as.numeric(readline("Enter second number: "))
} else {
  con <- file("stdin", "r")
  v <- as.numeric(readLines(con, n = 2))
  close(con)
  a <- v[1]
  b <- v[2]
}
cat("Subtraction of", b, "from", a, "is", a - b, "\n")