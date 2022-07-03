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

#Deliverable 3
#t.test(log10(sample_table$Miles_Driven),mu=mean(log10(population_table$Miles_Driven))) #compare sample versus population means
#sample_table <- population_table %>% sample_n(50) #randomly sample 50 data points
sample_table <-Suspension_Coil_Table %>% sample_n(30)

t.test(log10(sample_table$PSI),mu=mean(log10(Suspension_Coil_Table$PSI))) #compare sample versus population means

#mpg_1999 <- mpg_data %>% filter(year==1999) #select only data points where the year is 1999
#mpg_2008 <- mpg_data %>% filter(year==2008) #select only data points where the year is 2008

Sus_coil_lot1 <-Suspension_Coil_Table %>% filter(Manufacturing_Lot=="Lot1") #select only data points from lot 1

Sus_coil_lot2 <-Suspension_Coil_Table %>% filter(Manufacturing_Lot=="Lot2") #select only data points from lot 2

Sus_coil_lot3 <-Suspension_Coil_Table %>% filter(Manufacturing_Lot=="Lot3") #select only data points from lot 3

Sus_Coil_Sample <-Suspension_Coil_Table %>% sample_n(50)

#t.test(mpg_1999$hwy,mpg_2008$hwy,paired = T) #compare the mean difference between two samples
t.test(Sus_Coil_Sample$PSI,Sus_coil_lot1$PSI,paired = T) #compare the mean difference between two samples
t.test(Sus_Coil_Sample$PSI,Sus_coil_lot2$PSI,paired = T) #compare the mean difference between two samples
t.test(Sus_Coil_Sample$PSI,Sus_coil_lot3$PSI,paired = T) #compare the mean difference between two samples

