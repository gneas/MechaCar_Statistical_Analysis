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

From this visualization we can see that this variance is exceeding the 100 psi threshold as a result of outliers.
