# WINE QUALITY ANALYSIS – CLEANED SCRIPT

#======================
# 1. LOAD LIBRARIES
#======================
required_packages <- c("readxl", "dplyr", "ggplot2", "tidyr")

install_if_missing <- function(packages) {
  new_packages <- packages[!(packages %in% installed.packages()[,"Package"])]
  if(length(new_packages) > 0) {
    install.packages(new_packages, repos = "https://cran.rstudio.com/")
  }
}

install_if_missing(required_packages)

library(readxl)
library(dplyr)
library(ggplot2)
library(tidyr)

cat("✓ All libraries loaded\n\n")

#======================
# 2. LOAD DATASET
#======================
cat("Loading dataset...\n")
raw <- read_excel("wine.xlsx", col_names = FALSE)

# The first row has column names
colnames(raw) <- c("fixed_acidity", "alcohol", "quality", "residual_sugar", "chlorides",
                   "free_sulfur_dioxide", "total_sulfur_dioxide", "density", "pH",
                   "sulphates", "volatile_acidity", "citric_acid")

#======================
# 3. SPLIT SEMICOLON VALUES
#======================
cat("Cleaning dataset...\n")

wine <- raw %>% 
  mutate(across(everything(), ~ strsplit(as.character(.), ";"))) %>% 
  unnest(cols = everything()) %>%
  mutate(across(everything(), as.numeric))  # convert all columns to numeric

# Remove any remaining rows with NA
wine_clean <- wine %>%
  filter(!is.na(alcohol), !is.na(quality))

cat("✓ Cleaned dataset contains", nrow(wine_clean), "rows.\n\n")

#======================
# 4. DESCRIPTIVE STATISTICS
#======================
cat("Summary Statistics:\n")
print(summary(wine_clean$alcohol))
print(summary(wine_clean$quality))
cat("\n")

#======================
# 5. HISTOGRAM OF QUALITY
#======================
cat("Generating histogram...\n")
if (!dir.exists("plots")) dir.create("plots")

hist_plot <- ggplot(wine_clean, aes(x = quality)) +
  geom_histogram(bins = 10, fill = "steelblue", color = "white") +
  labs(
    title = "Distribution of Wine Quality",
    x = "Quality Score",
    y = "Frequency"
  ) +
  theme_minimal()

ggsave("plots/01_histogram_quality.png", hist_plot, width = 8, height = 5)
cat("✓ Saved: plots/01_histogram_quality.png\n\n")

#======================
# 6. SCATTER PLOT – ALCOHOL vs QUALITY
#======================
cat("Creating scatter plot...\n")

scatter <- ggplot(wine_clean, aes(x = alcohol, y = quality)) +
  geom_point(alpha = 0.5) +
  geom_smooth(method = "lm", color = "red") +
  labs(
    title = "Alcohol Content vs Wine Quality",
    x = "Alcohol (%)",
    y = "Quality Score"
  ) +
  theme_minimal()

ggsave("plots/02_scatter_alcohol_vs_quality.png", scatter, width = 8, height = 5)
cat("✓ Saved: plots/02_scatter_alcohol_vs_quality.png\n\n")

#======================
# 7. REGRESSION ANALYSIS
#======================
cat("Running linear regression...\n")

model <- lm(quality ~ alcohol, data = wine_clean)

cat("Regression Results:\n")
print(summary(model))
cat("\n")

#======================
# 8. INTERPRETATION
#======================
cat("INTERPRETATION:\n")

p_value <- summary(model)$coefficients[2,4]
estimate <- summary(model)$coefficients[2,1]

cat("Alcohol coefficient =", round(estimate, 4), "\n")
cat("p-value =", p_value, "\n")

if (p_value < 0.05) {
  cat("\nConclusion: There IS a statistically significant relationship.\n")
  if (estimate > 0) {
    cat("Higher alcohol levels are associated with HIGHER wine quality.\n")
  } else {
    cat("Higher alcohol levels are associated with LOWER wine quality.\n")
  }
} else {
  cat("\nConclusion: No significant relationship detected.\n")
}

cat("\n✓ ANALYSIS COMPLETE!\n")
