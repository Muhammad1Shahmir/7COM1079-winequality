White Wine Quality Analysis: Alcohol vs Quality

Overview  

This project takes a clear and organized look at how alcohol content affects the quality of white wine. Using the White **Wine Quality dataset, which includes nearly 5,000 samples, we examine 12 different chemical and sensory features such as acidity, sugar levels, density, pH, and alcohol percentage.
The main goal of the study is to find out whether wines with higher alcohol content tend to receive higher quality ratings. To answer this, we use statistical methods such as correlation analysis and regression modeling. These techniques help us determine whether the relationship between alcohol and quality is statistically significant—in other words, whether the pattern we observe is real and not just due to random chance.
By analyzing the data, we aim to understand how strongly alcohol influences quality and whether it stands out as an important factor compared to the other chemical properties in the dataset.

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

To formally examine whether alcohol content is related to wine quality, this project uses a statistical hypothesis-testing approach. Two main methods are applied to explore this relationship. First, a Pearson correlation test is used to measure the strength and direction of the linear relationship between alcohol percentage and quality ratings. This helps determine whether higher alcohol levels tend to go together with higher quality.
Second, a simple linear regression model is built to check whether alcohol content can predict wine quality. This model allows us to test whether the effect of alcohol on quality is statistically significant, meaning that the association is unlikely to be due to random chance. Taken together, these methods provide a clear and formal assessment of whether wines with higher alcohol content are generally rated as higher quality.

The following hypotheses are proposed:

Null Hypothesis (H₀):

There is no statistically significant relationship between alcohol content and wine quality. The analysis shows that alcohol content is not a statistically significant predictor of wine quality. This means that, in this dataset, wines with higher alcohol levels do not consistently receive higher quality ratings.in the White Wine Quality dataset.
Formally:
H₀: β₁ = 0
(Alcohol content does not influence quality.)

Alternative Hypothesis (H₁):

There is a statistically significant relationship between alcohol content and wine quality.
Formally:
H₁: β₁ ≠ 0
(Alcohol content influences quality.)

These hypotheses help us see whether changes in alcohol levels actually affect wine quality scores. If the tests show a significant result, we reject the null hypothesis and accept the alternative, meaning alcohol does have an effect on quality.
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

