if (file.exists(file.path("datasets", "diabetes.csv"))) {
  diabetes <- read.csv(file.path("datasets", "diabetes.csv"))
} else {
  diabetes <- data.frame(Age = c(25, 30, 35, 40, 45, 50, 55, 60, 65, 70), BloodPressure = c(115, 118, 122, 125, 128, 132, 136, 140, 144, 148), Glucose = c(85, 90, 95, 100, 105, 110, 115, 120, 125, 130))
}
model <- lm(BloodPressure ~ Age, data = diabetes)
print(summary(model))
predicted <- predict(model, data.frame(Age = c(42, 58)))
cat("Predicted BloodPressure for Age 42 and 58:\n")
print(predicted)