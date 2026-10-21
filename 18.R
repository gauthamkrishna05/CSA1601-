dir.create("plots", showWarnings = FALSE)
if (file.exists(file.path("datasets", "diabetes.csv"))) {
  diabetes <- read.csv(file.path("datasets", "diabetes.csv"))
} else {
  diabetes <- data.frame(Age = c(25, 30, 35, 40, 45, 50, 55, 60, 65, 70), BloodPressure = c(115, 118, 122, 125, 128, 132, 136, 140, 144, 148), Glucose = c(85, 90, 95, 100, 105, 110, 115, 120, 125, 130))
}
png("plots/18_scatter.png", width = 800, height = 600)
plot(diabetes$Age, diabetes$BloodPressure, main = "Scatter Plot - Age vs Blood Pressure", xlab = "Age", ylab = "Blood Pressure", pch = 19, col = "blue")
abline(lm(diabetes$BloodPressure ~ diabetes$Age), col = "red", lwd = 2)
dev.off()
cat("Scatter plot saved to plots/18_scatter.png\n")
cat("Correlation between Age and BloodPressure =", round(cor(diabetes$Age, diabetes$BloodPressure), 4), "\n")