x <- c(2, 4, 4, 4, 5, 5, 7, 9)
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
cat("Data:", paste(x, collapse = ", "), "\n")
cat("Mean =", mean(x), "\n")
cat("Median =", median(x), "\n")
cat("Mode =", getmode(x), "\n")