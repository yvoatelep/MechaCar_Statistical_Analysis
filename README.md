# MechaCar_Statistical_Analysis
For challenge 15

## Linear Regression to Predict MPG (Three questions addressed. Need Linear regression image. 

In this linear regression, we can see that the larger P values occur for the categories of AWD, vehicle weight, and spoiler angle. This would indicate that these design factors have the least significant relationship to MPG rating, which is a surprising discovery.The P values for Vehicle lenght, and ground clearance are far lower than than the .05 benchmark, indicating that these factors have signinficant impact on MPG. 
???Is the slope of the linear model considered to be zero? Why or why not? Not sure how to answer this???
The Multiple R-squared value of 0.7149 woould indicate that this regression is an adequate predictor of MPG in the prototypes, but considering the importance of this study, and the surprising nature of the reslults, more investigation is indicated. 

![This is an image](https://github.com/yvoatelep/MechaCar_Statistical_Analysis/blob/main/Images/Linear%20regression%20for%20deliverable%201.png)

## Summary Statistics on Suspension Coils
Although the average variance in PSI for the prototype suspension coils meets the standard of <100 PSI, the relatively high average indicates a need for further investigation. When looking at the Vaiance by lot number, we can see that Manufactuing Lot number 1 was extremely successfil in meeting this parameter, with a variance of only .98. On the other hand, Lat 3 was extremely problematic, wit a Vairance of 170PSI, well over the standard of 100 PSI. This information indicates that there must be furthing investigation into the mafacturing of the protoypes in Lot 3, particularly in the suspension coils.

![This is an image](https://github.com/yvoatelep/MechaCar_Statistical_Analysis/blob/main/Images/Summary_Table%20_for_Deliverable2.png)

![This is an image](https://github.com/yvoatelep/MechaCar_Statistical_Analysis/blob/main/Images/Summary_By_Manuf.Lot_Deliverable2.png)



## T-Tests on Suspension Coils
#One Sample T Test 
In the One Sample T test comparing a set of 30 randomly chosen car prototypes to the entire popultation (shown below) our P-value of 0.03662 is below the assumed significance level 0.05. Therefore we can state that the two means are not statistically different.


![This is an image](https://github.com/yvoatelep/MechaCar_Statistical_Analysis/blob/main/Images/Ttest1.A.png)


# Two Sample T Test
In the Two Sample T test, testing a subset of the population to each of the Manufacturing Lot groups, the results were very inconsistent. In the test of Lot 1, the p value of the test was 1, indicating that testing data was not reliable and that random chance is involved in. 
Lot 2 had a lower P value, but still above the level of .05, and that there is some interference in the data. The most reliable of the three data sets is Set 3, where the P value is lower than .05. This does not correspond with the information we saw earier regarding Manufacturing Lots and mena. 

![This is an image](https://github.com/yvoatelep/MechaCar_Statistical_Analysis/blob/main/Images/Ttest_Lot1.png)

![This is an image](https://github.com/yvoatelep/MechaCar_Statistical_Analysis/blob/main/Images/Ttest.Lot2.png)

![This is an image](https://github.com/yvoatelep/MechaCar_Statistical_Analysis/blob/main/Images/Ttest.Lot3.png)

## Study Design: MechaCar vs Competition

In my next testing, I would concentrate on the mpg fo the MechaCar vs the Competition. I would use Simple Linear Regression to see if mpg was affected by the factors of weight, spoiler angle, and AWD in other car models. This would help to identify if these factors are generally an influence on MPG, and if so, show the need of more investigation of these factors and mpg in the MechaCar samples. In order to do this testing, we need a data set of these variables in at least 4 competitor car models. 

  

