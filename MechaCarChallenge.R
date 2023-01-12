library(tidyverse) 
MechaCar_mpg <- read.csv(file='Starter_Code-2/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
df <- MechaCar_mpg
linear_model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = df)
summary(linear_model)

Suspension_Coil <- read.csv(file='Starter_Code-2/Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
Suspension_Coil %>% summarise(mean(PSI))
Suspension_Coil %>% summarise(median(PSI))
Suspension_Coil %>% summarise(sd(PSI))
Suspension_Coil %>% summarise(var(PSI))
total_summary <- Suspension_Coil %>% summarise(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))                            
total_summary <- Suspension_Coil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))
total_summary
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarise(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI),.groups = 'keep')
lot_summary

t.test(Suspension_Coil$PSI, mu=1500)
t.test(subset(Suspension_Coil,Manufacturing_Lot=="Lot1")$PSI, mu=1500)
t.test(subset(Suspension_Coil,Manufacturing_Lot=="Lot2")$PSI, mu=1500)
t.test(subset(Suspension_Coil,Manufacturing_Lot=="Lot3")$PSI, mu=1500)


