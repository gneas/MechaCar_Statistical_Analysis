# Load dplyr. Also loaded tidyverse from module.
library(dplyr)
library(tidyverse)

# Read in csv file.
mechacarmpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# Perform linear regression using lm() function.
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacarmpg)

# Use summary() to determine p-valuel and r-squared value for the lm model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacarmpg))

# Read in csv file.
suspensioncoil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

# Create total_summary dataframe.
total_summary <- suspensioncoil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

# Create lot_summary dataframe using groupby() and summarize().
lot_summary <- suspensioncoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))
