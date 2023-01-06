library(tidyverse) 
MechaCar_mpg <- read.csv(file='Starter_Code-2/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
class(MechaCar_mpg)
df <- MechaCar_mpg
linear_model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg, data = df)
summary(linear_model)