library(dplyr)
library(tidyverse)
#Deliverable 1
MechaCar_MPG_Table<- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = MechaCar_MPG_Table) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = MechaCar_MPG_Table)) #generate summary statistics

#Deliverable 2
Suspension_Coil_Table<- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
#summarize_demo <- demo_table2 %>% group_by(condition) %>% summarize(Mean_Mileage=mean(odometer),Maximum_Price=max(price),Num_Vehicles=n(), .groups = 'keep') #create summary table with multiple columns
Summary_by_Lots <- Suspension_Coil_Table %>% group_by(Manufacturing_Lot)%>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),STD_DEV_PSI=sd(PSI),Variance_PSI=var(PSI), .groups = 'keep') #Create summary by lot number
Total_Summary <- Suspension_Coil_Table %>% group_by()%>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),STD_DEV_PSI=sd(PSI),Variance_PSI=var(PSI), .groups = 'keep') #Create summary by lot number