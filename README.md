White Wine Quality Analysis: Alcohol vs Quality

Overview  
This project conducts a comprehensive statistical analysis to determine whether **alcohol content** is a statistically significant predictor of **wine quality** in the *White Wine Quality* dataset.  
The dataset contains 12 chemical and sensory attributes for nearly 5,000 white wine samples, and the primary goal is to explore whether higher alcohol levels are associated with higher-quality ratings.

Research Question  

"Is there a statistically significant relationship between alcohol content and wine quality in the White Wine Quality dataset?"

This question investigates whether wines with higher alcohol percentages tend to receive better overall quality scores from expert tasters.

Dataset Description  

The dataset includes the following variables:

- `fixed acidity`  
- `volatile acidity`  
- `citric acid`  
- `residual sugar`  
- `chlorides`  
- `free sulfur dioxide`  
- `total sulfur dioxide`  
- `density`  
- `pH`  
- `sulphates`  
- `alcohol`  
- `quality` (Target variable)

Hypotheses

To formally investigate the relationship between alcohol content and wine quality, a statistical hypothesis-testing framework is applied. The analysis uses both a Pearson correlation test and a simple linear regression model to determine whether alcohol percentage is associated with higher quality ratings.

The following hypotheses are proposed:

Null Hypothesis (H₀):

There is no statistically significant relationship between alcohol content and wine quality in the White Wine Quality dataset.
Formally:
H₀: β₁ = 0
(Alcohol content does not influence quality.)

Alternative Hypothesis (H₁):

There is a statistically significant relationship between alcohol content and wine quality.
Formally:
H₁: β₁ ≠ 0
(Alcohol content influences quality.)

These hypotheses allow the study to determine whether changes in alcohol levels correspond to meaningful differences in quality scores. If the statistical results show a significant correlation or regression coefficient, the null hypothesis will be rejected, supporting the alternative hypothesis.

Methodology  

The analysis includes:

1. Data Cleaning
- Checking for missing values  
- Ensuring numeric formatting for all columns  
- Removing any corrupted or non-usable records  

2. Visualisations
- Histogram of alcohol content with normal curve  
- Scatter plot of alcohol vs quality  
- Contingency table grouping alcohol levels into Low / Medium / High  

3. Statistical Analysis
- Correlation analysis  
- Linear regression model: 
  ```
  quality ~ alcohol
  ```
- Normality testing 
- Effect size estimation

Summary of Findings  

The analysis aims to determine:

- Whether alcohol percentage significantly influences wine quality  
- How strong the relationship is (effect size)  
- Whether this relationship holds under statistical testing assumptions  

Final conclusions are based on regression results, p-values, confidence intervals, and visual inspection.

Additional Insights 

Beyond the core statistical results, this analysis also offers some practical takeaways for anyone involved in winemaking or wine evaluation. Knowing that alcohol content might influence perceived quality can help guide decisions during production, such as how long to ferment or when to harvest grapes. Of course, alcohol is only one piece of the puzzle—factors like aroma, acidity, balance, and sweetness also play a major role in how a wine is judged. Still, seeing a measurable relationship gives producers and analysts a clearer starting point for improving overall quality.

This project also opens the door for deeper research. Future analyses could look at how alcohol interacts with other chemical features, like residual sugar or sulphates, to better understand what truly drives expert ratings. Exploring these connections could lead to a more complete picture of what makes certain wines stand out in terms of flavor, structure, and overall enjoyment.

Group Collaboration  

All group members contributed through GitHub commits, code review, and documentation.  
The R code and outputs are included in the *Analysis.R* script and appendices.
is project is part of the **7COM1079 Statistics and Data Analysis** module and adheres to academic submission standards, including R code in the appendices and a structured written report.

