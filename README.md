# MechaCar Statistical Analysis

### Resources
**Data source:** [Vehicle MPG Data](/Data/MechaCar_mpg.csv), [Manufacturing PSI Data](/Data/Suspension_Coil.csv)<br>
**Tools:** RStudio, R, Tidyverse<br>
**Analysis:** [RScript File](/MechaCarChallenge.RScript.R)

## Linear Regression to Predict MPG
### Summary
Using MechaCar data from protoypes, a linear model was created in R, to predict mpg value based on contributing factors. 
<br>
<br>**Image 1. Linear Model Coefficients**
<br>![Image link](/Images/lr_model.png)
<br>
<br>**Image 2. Linear Model Summary**
<br>![Image link](/Images/summary_lrm.png)

### Findings
1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
 - As shown in the summary (Image 2), vehicle length and ground clearance provided non-random variance of less than 5%.
2. Is the slope of the linear model considered to be zero? Why or why not?
 - With a p value = 5.35e-11, the null hypothesis should be rejected; the slope does not equal 0
3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
 - With an r^2 value of 0.71, this may not be best model to predict mpg. Only vehicle length and ground clearance were considered significant factors, showing that there are most likely other features to consider for a linear model. 

## Summary Statistics on Suspension Coils
### Summary
Using MechaCar data from protoypes, the PSI of the suspension coils were measured for vehicles across 3 lots and calculated values for mean, median, variance, and standard deviation. 
<br>
<br>**Image 3. Vehicle PSI Statistics**
<br>![Image link](/Images/total_summary.png)
<br>Image 3 shows the summary of statistical values for PSI values across all vehicles.
<br>
<br>**Image 4. Vehicle PSI Statistics By Lot**
<br>![Image link](/Images/lot_summary.png)
<br>Image 4 shows the summary of statistical values for PSI values grouped by manufacturing lot. 

### Findings
4. The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
 - For all vehicles accross the lots, the variance equals 62.3 which does meet the specifications. However, the vehicles from lot 3 show a variance eqaul 170.3. This indicates outliers that maybe caused by manufacturing errors in this lot. 

## T-Tests on Suspension Coils
### Summary
To compare the lots mean, t-test statistical test were ran for the total cars and for each lot. 
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

### Findings
 - 

## Study Design: MechaCar vs Competition
<!-- Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.
In your description, address the following questions:
What metric or metrics are you going to test?
What is the null hypothesis or alternative hypothesis?
What statistical test would you use to test the hypothesis? And why?
What data is needed to run the statistical test? -->

