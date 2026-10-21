if (interactive()) {
  a <- as.numeric(readline("Enter numerator: "))
  b <- as.numeric(readline("Enter denominator: "))
} else {
  con <- file("stdin", "r")
  v <- as.numeric(readLines(con, n = 2))
  close(con)
  a <- v[1]
  b <- v[2]
}
if (b == 0) {
  cat("Division by zero is not allowed.\n")
} else {
  cat("Quotient of", a, "/", b, "is", a / b, "\n")
}