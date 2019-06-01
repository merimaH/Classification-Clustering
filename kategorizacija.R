# kategorizacija
train2 <- train1

#battery power
train2$battery_power[train1$battery_power <= 1000] <- "Low"
train2$battery_power[train1$battery_power > 1000 & train1$battery_power <= 1500 ] <- "Mid"
train2$battery_power[train1$battery_power > 1500] <- "High"

#clock speed
train2$clock_speed[train1$clock_speed <= 1.125] <- "Low"
train2$clock_speed[train1$clock_speed > 1.125 & train1$clock_speed <= 1.75 ] <- "Mid1"
train2$clock_speed[train1$clock_speed > 1.75 & train1$clock_speed <= 2.375 ] <- "Mid2"
train2$clock_speed[train1$clock_speed > 2.375] <- "High"

#front camera 
train2$fc[train1$fc <= 5] <- "Low resolution"
train2$fc[train1$fc > 5 & train1$fc <= 13 ] <- "Mid resolution"
train2$fc[train1$fc > 13] <- "High resolution" 

#memory
train2$int_memory[train1$int_memory <= 24] <- "Low capacity"
train2$int_memory[train1$int_memory > 24 & train1$int_memory <= 48 ] <- "Mid capacity"
train2$int_memory[train1$int_memory > 48] <- "High capacity"

#depth
train2$m_dep[train1$m_dep <= 0.4] <- "1"
train2$m_dep[train1$m_dep > 0.4 & train1$m_dep <= 0.7 ] <- "2"
train2$m_dep[train1$m_dep > 0.7] <- "3"

#weight
train2$mobile_wt[train1$mobile_wt <= 120] <- "Low"
train2$mobile_wt[train1$mobile_wt > 120 & train1$mobile_wt <= 160 ] <- "Mid"
train2$mobile_wt[train1$mobile_wt > 160] <- "High"

#cores 
train2$n_cores[train1$n_cores <= 2] <- "1-2"
train2$n_cores[train1$n_cores > 2 & train1$n_cores <= 4 ] <- "3-4"
train2$n_cores[train1$n_cores > 4 & train1$n_cores <= 6 ] <- "4-6"
train2$n_cores[train1$n_cores > 6] <- "6-8"

#primary camera 
train2$pc[train1$pc <= 5] <- "Low resolution"
train2$pc[train1$pc > 5 & train1$pc <= 13 ] <- "Mid resolution"
train2$pc[train1$pc > 13] <- "High resolution"

#px height 
train2$px_height[train1$px_height <= 650] <- "1"
train2$px_height[train1$px_height > 650 & train1$px_height <= 1300 ] <- "2"
train2$px_height[train1$px_height > 1300] <- "3"

#px width  
train2$px_width[train1$px_width <= 1000] <- "1"
train2$px_width[train1$px_width > 1000 & train1$px_width <= 1500 ] <- "2"
train2$px_width[train1$px_width > 1500] <- "3"

#ram
train2$ram[train1$ram <= 1024] <- "Low capacity"
train2$ram[train1$ram > 1024 & train1$ram <= 1048 ] <- "Mid capacity"
train2$ram[train1$ram > 1048] <- "High capacity"

#screen height
train2$sc_h[train1$sc_h <= 10] <- "1"
train2$sc_h[train1$sc_h > 10 & train1$sc_h <= 15 ] <- "2"
train2$sc_h[train1$sc_h > 15] <- "3"

#screen width
train2$sc_w[train1$sc_w <= 6] <- "1"
train2$sc_w[train1$sc_w > 6 & train1$sc_w <= 12 ] <- "2"
train2$sc_w[train1$sc_w > 12] <- "3"

#talk time
train2$talk_time[train1$talk_time <= 8] <- "1"
train2$talk_time[train1$talk_time > 8 & train1$talk_time <= 14 ] <- "2"
train2$talk_time[train1$talk_time > 14] <- "3"

kolone <- c("battery_power","clock_speed","fc","int_memory","m_dep", "mobile_wt","n_cores","pc",
            "px_height","px_width","ram","sc_h","sc_w","talk_time")
train2[kolone] <- lapply(train2[kolone], as.factor)

