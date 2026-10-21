if (interactive()) {
  n <- as.integer(readline("Enter a number: "))
} else {
  con <- file("stdin", "r")
  n <- as.integer(readLines(con, n = 1))
  close(con)
}
if (n %% 2 == 0) {
  cat(n, "is Even\n")
} else {
  cat(n, "is Odd\n")
}