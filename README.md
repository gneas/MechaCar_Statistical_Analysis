# MechaCar Statistical Analysis
A project utilizing R in order to analyze a prototype car from AutoRUs called MechaCar.

## Linear Regression to Predict MPG
![Deliverable1LinRegMod&SummaryUpdated](/images/Deliverable1LinRegMod&SummaryUpdated.png "Deliverable1LinRegMod&SummaryUpdated")

- It can be seen from the summary above that the variables/coefficients that provide a non-random amount of variance to the mpg in the dataset are the intercept, vehicle length, and ground clearance. 
- With regard to the slope of the linear model, it is clear from the coefficients values determined that it is not zero. Additionally, the p-value being lower than the significance of 0.05% shows that the slope is not zero.
- This linear regression model does effectively predict the variables that impact mpg. We can see this from the r-squared value of 0.7149. This indicates a 71% likelyhood of predicting the mpg.

## Summary Statistics on Suspension Coils

### Suspension Coil Dataframe:
![SuspensioncoilDataframe](/images/SuspensioncoilDataframe.png "SuspensioncoilDataframe")

### Total Summary:
![SuspensioncoilTotalSummary](/images/SuspensioncoilTotalSummary.png "SuspensioncoilTotalSummary")

It is clear from total summary above that the variance across the whole dataset, 62.29356 psi, does not exceed the 100 psi ceiling. However, when we look at the Lot Summary we see a variance that does.

### Lot Summary:
![SuspensioncoilLotSummary](/images/SuspensioncoilLotSummary.png "SuspensioncoilLotSummary")

We can see that Lot3 shows a variance of 170.2861224 psi, which does exceed the 100 psi ceiling. To further examine Lot3's data, a Boxplot visualization can be helpful.

![SuspensioncoilLotBoxPlot](/images/SuspensioncoilLotBoxPlot.png "SuspensioncoilLotBoxPlot")

From this visualization above we can see that this variance is exceeding the 100 psi threshold as a result of outliers.

## T-Tests on Suspension Coils

### T-Test on All Manufacturing Lots
![SuspensioncoilTTestAllLots](/images/SuspensioncoilTTestAllLots.png "SuspensioncoilTTestAllLots")

From the image above we can see that utilizing the T-Test function can show us whether or not the PSI across all manufacturing lots is statistically different from the population mean of 1,500 psi. The p-value of 0.06028 being larger than the significance of 0.05% tells us that the mean across all lots is statistically similar to the population mean of 1,500 psi.

### T-Test on Individual Lots 1, 2, and 3
![SuspensioncoilTTestLot1Lot2Lot3](/images/SuspensioncoilTTestLot1Lot2Lot3.png "SuspensioncoilTTestLot1Lot2Lot3")

Here we can see that Lots 1 and 2 both have p-values greater than the significance of 0.05% indicating that the null hypothesis cannot be rejected and therefore they are not statistically different from the population mean of 1,500 psi. Lot 3 on the other hand has a p-value less than the significance level of 0.05%. This tells us that Lot 3 has a sample mean that leads us to reject the null hypothesis. 

## Study Design: MechaCar vs Competition

### Metrics to be tested

- Cost of MechaCar vs Competition
- MPG of MechaCar vs Competition
- Horsepower of MechaCar vs Competition

### Null and Alternative Hypothesis

- Cost:
    - Null: MechaCar cost is less than competitor.
    - Alt: MechaCar cost is not less than competitor.
- MPG:
    - Null: MechaCar MPG is less than competitor.
    - Alt: MechaCar MPG is not less than competitor.
- Horsepower:
    - Null: MechaCar horsepower is greater than competitor.
    - Alt: MechaCar horsepower is not greater than competitor.

### Statistical Test

Linear regression models would be used to test all three metrics. An examination of the slopes identified would show how MechaCar compares to its competition in each of these areas. Data containing the cost, MPG, and horsepower for the MechaCar and its competition would need to be compiled for this testing.
