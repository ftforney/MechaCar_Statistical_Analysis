# MechaCar Statistical Analysis

## Purpose

We will use statistics and hypotheses testing to analyze a series of datasets from the automotive industry.

## T-Test on Suspension Coils

### All manufacturing lots against population mean

![T-Test](https://i.imgur.com/n345iDM.png)

Our P-Value of 0.088% is above the significance level, assuming it is the common 0.05% significance value. We don't have enough evidence to reject the null hypothesis, and can say that the PSI across all manufacturing lots is statistically similar.

### Each manufacturing lot against population mean

Our first lot has the following results:

![Lot1](https://i.imgur.com/d21yf2w.png)

The P-Value is below the significance value of 0.05%, so we are able to reject the null hypothesis and say that the PSI across this lot is statistically different.

Our second lot:

![Lot2](https://i.imgur.com/QJpAU6x.png)

The P-Value is 0.0038%, and is still below our significance value of 0.05%, and again we can reject the null hypothesis.

Our third lot:

![Lot3](https://i.imgur.com/Rek0GJG.png)

The P-Value is 0.036%, and again is still below our significance value of 0.05%, so we reject the null hypothesis.

## Study Design: MechaCar vs Competition

We will be performing a statistical analasys to compare the performance of the MechaCar prototype against our competition using the following metrics:

 - 0-60 MPH Time
 - Braking Distance
 - Fuel Economy (MPG)
 - Power
 - Safety Rating

For our null hypothesis: Each performance metric is statistically similar between our MechaCar prototype and all vehicles.

We're using a one-way ANOVA test, as it is used to compare the means of a continuous numerical variable across a number of groups.

To perform the test, we read all the data of our MechaCar set, as well as its competition, and it is gathered in a single DataFrame where each metric is a column.
