# Load package
library(dplyr)

# Import and read file as dataframe
mecha_car_df <- read.csv(file='Resources/MechaCar_mpg.csv', check.names=F, stringsAsFactors =F)

# Perform linear regression
linear_model <-lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mecha_car_df) 
# Determine the p-value and the r-squared value
summary(linear_model)


# Import and read file as table
suspension_coil_table <- read.csv(file='Resources/Suspension_coil.csv', check.names=F, stringsAsFactors =F)
suspension_coil_table

# Create summary table
total_summary <- suspension_coil_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep') 
total_summary

# create summary table by grouping each manufacturing lot
lot_summary <- suspension_coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')
lot_summary

#Perform t-test on suspension  coils for all Lots
t.test(suspension_coil_table$PSI, mu=1500)
# t-test for Lot 1
t.test(subset(suspension_coil_table,Manufacturing_Lot=="Lot1")$PSI, mu=1500)
# t-test for Lot 2
t.test(subset(suspension_coil_table,Manufacturing_Lot=="Lot2")$PSI, mu=1500)
# t-test for Lot 3
t.test(subset(suspension_coil_table,Manufacturing_Lot=="Lot3")$PSI, mu=1500)
