# MechaCar Statistical Analysis

### Resources
**Data source:** [Vehicle MPG Data](/Data/MechaCar_mpg.csv), [Manufacturing PSI Data](/Data/Suspension_Coil.csv)<br>
**Tools:** RStudio, R, Tidyverse<br>
**Analysis:** [RScript File](/MechaCarChallenge.RScript.R)

## Linear Regression to Predict MPG
Using MechaCar data from protoypes, a linear model was created in R, to predict mpg value based on contributing factors. The contributing factor measured were: vehicle length, vehicle weight, spoiler angle, ground clearance, and all wheel drive status (AWD).
<br>
<br>**Image 1. Linear Model Coefficients**
<br>![Image link](/Images/lr_model.png)
<br>
<br>**Image 2. Linear Model Summary**
<br>![Image link](/Images/summary_lrm.png)

### Results
1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
 - As shown in the summary (image 2), vehicle length and ground clearance provided non-random variance of less than 5%.
2. Is the slope of the linear model considered to be zero? Why or why not?
 - With a p value = 5.35e-11, the null hypothesis should be rejected; the slope does not equal 0
3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
 - With an r^2 value of 0.71, this may not be best model to predict mpg. Only vehicle length and ground clearance were considered significant factors, showing that there are most likely other features to consider for a linear model. 

## Summary Statistics on Suspension Coils
Using MechaCar data from protoypes, the PSI of the suspension coils were measured for vehicles across 3 lots and calculated values for mean, median, variance, and standard deviation. 
<br>
<br>**Image 3. Vehicle PSI Statistics**
<br>![Image link](/Images/total_summary.png)
<br>Image 3 shows the summary of statistical values for PSI values across all vehicles.
<br>
<br>**Image 4. Vehicle PSI Statistics By Lot**
<br>![Image link](/Images/lot_summary.png)
<br>Image 4 shows the summary of statistical values for PSI values grouped by manufacturing lot. 

### Results
4. The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
 - For all vehicles accross the lots, the variance equals 62.3 which does meet the specifications. However, the vehicles from lot 3 show a variance eqaul 170.3. This indicates outliers that may be caused by manufacturing errors in this lot. 

## T-Tests on Suspension Coils
To compare the PSI values accross the lots, t-test statistical tests were ran for the total cars in dataset and subset by each lot using one-sample t-tests. The population mean was recorded as 1500 PSI and p-values were observed using a significance level of 0.05. Our null hypothesis for each tests states that true mean of the samples do not statiscally differ from the population mean. Our alternative hypothesis states that there is a difference between the means of the sample and population.
<br>
<br>**Image 5. All Lots vs Total T-Test**
<br>![Image link](/Images/t.test_all.png)
<br>
<br>**Image 6. Lot 1 vs Total T-Test**
<br>![Image link](/Images/t.test_lot1.png)
<br>
<br>**Image 7. Lot 2 vs Total T-Test**
<br>![Image link](/Images/t.test_lot2.png)
<br>
<br>**Image 8. Lot 3 vs Total T-Test**
<br>![Image link](/Images/t.test_lot3.png)

### Results
 - The first three t-tests, using all lots, lot 1, and lot 2 sample values respectively (images 5, 6, and 7), result in p values that are greater than 0.05. This would lead us to fail to reject the null hypothesis, relating that there is no significant difference between these samples and the population mean of PSI values.
 - The final t-test, using lot 3 sample PSI values (image 7), shows a p value of less than 0.05. This would lead us to reject our null hypothesis and favor the alternate, the mean of the sample is significantly different from the population. 
   - This correlates with our summary stastic table (image 4) showing that the variance of PSI values in lot 3, exceeded the threshhold.

## Study Design: MechaCar vs Competition 
1. What metric or metrics are you going to test?
 - In order to compare MechaCar to other options, we should evaluate its performance, durability, environmental effect, and value.efficiency, CO2 output, MSRP cost, and price of material/labor for upkeep.
2. What is the null hypothesis or alternative hypothesis?
 - Null hypothesis is that there is no significant difference in metric measures between MechCar and competition.
 - Alternate hypothesis is that there is a significant difference in metric measures between MechCar and competition.
3. What statistical test would you use to test the hypothesis? And why?
 - The ANOVA test will be used to evaluate data metrics across multiple vehicles. ANOVA is used to measure the variance of means across multiple factors. We would use the ANOVA test to measure the means of each metric data as our dependent variable, across MechaCar and its competitors, as our independent variable with multiple groups. 
4. What data is needed to run the statistical test? 
 - Horsepower, brake distance, vehicle detection capabilities, recomended time to engine tune up, feul efficiency, CO2 output, MSRP cost, and price of material/labor for upkeep.

