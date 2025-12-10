# Load dataset
wine <- read.csv("winequality-white.csv", sep = ";")

# Extract variables
alcohol <- wine$alcohol
quality <- wine$quality

# 1. MAIN PLOT – Scatter plot with regression line

png("scatter_alcohol_quality.png")
plot(alcohol, quality,
     main = "Scatter Plot of Alcohol vs Wine Quality",
     xlab = "Alcohol (%)",
     ylab = "Quality Rating",
     pch = 19)
abline(lm(quality ~ alcohol), col = "blue", lwd = 2)
dev.off()

# 2. SUPPLEMENTARY PLOT – Histogram of Alcohol

png("histogram_alcohol.png")
hist(alcohol,
     main = "Histogram of Alcohol Content",
     xlab = "Alcohol (%)",
     breaks = 20)
dev.off()

# 3. Pearson Correlation Test
cor_test_result <- cor.test(alcohol, quality, method = "pearson")
print(cor_test_result)

# 4. Linear Regression Model

model <- lm(quality ~ alcohol)
print(summary(model))
