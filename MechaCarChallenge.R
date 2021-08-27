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

# Boxplot to examine Lot3 variance
plt <- ggplot(suspensioncoil, aes(x=Manufacturing_Lot, y=PSI))
plt + geom_boxplot()

?t.test()

# Perform t.test() to determine if psi across lots is statistically different from pop mean of 1,500psi.
t.test(suspensioncoil$PSI,mu=1500)

# Use subset() to create lots for use in t.test() against pop mean of 1,500psi.
Lot1 <- subset(suspensioncoil,Manufacturing_Lot=="Lot1")
Lot2 <- subset(suspensioncoil,Manufacturing_Lot=="Lot2")
Lot3 <- subset(suspensioncoil,Manufacturing_Lot=="Lot3")

# Perform t.test() on lots against pop mean of 1,500psi.
t.test(Lot1$PSI, mu=1500)
t.test(Lot2$PSI, mu=1500)
t.test(Lot3$PSI, mu=1500)
