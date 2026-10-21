if (file.exists(file.path("datasets", "diabetes.csv"))) {
  diabetes <- read.csv(file.path("datasets", "diabetes.csv"))
} else {
  diabetes <- data.frame(Age = c(25, 30, 35, 40, 45, 50, 55, 60, 65, 70), BloodPressure = c(115, 118, 122, 125, 128, 132, 136, 140, 144, 148), Glucose = c(85, 90, 95, 100, 105, 110, 115, 120, 125, 130))
}
model <- lm(Age ~ BloodPressure + Glucose, data = diabetes)
print(summary(model))