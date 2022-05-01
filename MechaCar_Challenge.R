library(tidyverse)

mechaCarData <- read_csv('Resources/MechaCar_mpg.csv')
head(mechaCarData)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + AWD + ground_clearance, data = mechaCarData)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + AWD + ground_clearance, data = mechaCarData))

suspension_coil_data <- read_csv('Resources/Suspension_Coil.csv')
head(suspension_coil_data)

total_summary <- suspension_coil_data %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')
total_summary

lot_summary <- suspension_coil_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')
lot_summary

global_sample_table <- suspension_coil_data %>% sample_n(50)

plt <- ggplot(suspension_coil_data, aes(x = PSI))
plt + geom_density()

plt <- ggplot(global_sample_table, aes(x = PSI))
plt + geom_density()

plt <- ggplot(global_sample_table, aes(x = log10(PSI)))
plt + geom_density()

t.test(global_sample_table$PSI, mu = mean(suspension_coil_data$PSI))

psi_lot1_sample <- suspension_coil_data %>% subset(Manufacturing_Lot=='Lot1') %>% sample_n(25)
t.test(psi_lot1_sample$PSI, mu = mean(suspension_coil_data$PSI))

psi_lot2_sample <- suspension_coil_data %>% subset(Manufacturing_Lot=='Lot2') %>% sample_n(25)
t.test(psi_lot2_sample$PSI, mu = mean(suspension_coil_data$PSI))

psi_lot3_sample <- suspension_coil_data %>% subset(Manufacturing_Lot=='Lot3') %>% sample_n(25)
t.test(psi_lot3_sample$PSI, mu = mean(suspension_coil_data$PSI))