# Load package
library(dplyr)

# Import and read file as dataframe
mecha_car_df <- read.csv(file='Resources/MechaCar_mpg.csv', check.names=F, stringsAsFactors =F)

# Perform linear regression
linear_model <-lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mecha_car_df) 
# Determine the p-value and the r-squared value
summary(linear_model)
