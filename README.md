# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

This is a linear model that predicts the mpg of MechaCar prototypes using several variables such as vehicle length, vehicle weight, spoiler angle, ground clearance and AWD.

![Linear Regression](./Resources/Screenshot%202022-09-26%20at%204.13.38%20PM.png)

- Vehicle length and ground clearance provided a non-random amount of variance to the mpg values in the dataset.
- The slope of the linear model is not considered to be zero because the p-value of the linear model was much smaller than the significance level, which shows that the null hypothesis is not true.
- R-squared is .7149, which is a strong correlation for the dataset and shows the dataset is 71% accurate.

## Summary Statistics on Suspension Coils

![Total Summary](./Resources/total_summary.png)

![Lot Summary](./Resources/lot_summary.png)

As shown above in total summary Data, overall variance is 62.29 which is under limit of 100 pounds per square inch. While in lot summary stats, Variance for Lot 3 exceeded 100 pounds per square inch and doesn't meet the design specifications.
