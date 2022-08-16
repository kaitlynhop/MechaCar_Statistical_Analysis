# import tidyverse package
library(tidyverse)
# read csv as df
mc_table <- read.csv(file="MechaCar_mpg.csv", check.names = F, stringsAsFactors = F)
# linear regression model of data
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mc_table)
# summary statistics of lr model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mc_table))
