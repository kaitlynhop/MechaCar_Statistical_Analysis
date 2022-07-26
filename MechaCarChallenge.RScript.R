# import tidyverse package
library(tidyverse)

# read csv as df
mc_table <- read.csv(file="MechaCar_mpg.csv", check.names = F, stringsAsFactors = F)

# linear regression model of data
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mc_table)

# summary statistics of lr model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mc_table))

# import suspension csv
sc_table <- read.csv(file="Suspension_Coil.csv", check.names = F, stringsAsFactors = F)

# summary table of suspension data
total_summary <- sc_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

# summary table of suspension data grouped by lot
lot_summary <- sc_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

# t-test comparison of all lots to population
t.test(lot_summary$Mean, mu=1500)

# t-test comparison of lot 1 to population
t.test(subset(sc_table$PSI, sc_table$Manufacturing_Lot == "Lot1"), mu=1500)

# t-test comparison of lot 2 to population
t.test(subset(sc_table$PSI, sc_table$Manufacturing_Lot == "Lot2"), mu=1500)

# t-test comparison of lot 3 to population
t.test(subset(sc_table$PSI, sc_table$Manufacturing_Lot == "Lot3"), mu=1500)

