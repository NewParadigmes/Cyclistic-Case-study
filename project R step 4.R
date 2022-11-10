# STEP 4: CONDUCT DESCRIPTIVE ANALYSIS

mean(all_data_V2$ride_length,trim = 0, na.rm = T) #straight average (total ride length / rides)
median(all_data_V2$ride_length,na.rm = T) #midpoint number in the ascending array of ride lengths
max(all_data_V2$ride_length, na.rm = T) #longest ride
min(all_data_V2$ride_length, na.rm = F) #shortest ride
count(all_data_V2)


summary(all_data_V2$ride_length)

mean(all_data_V2$ride_length)

library(dplyr)
max(all_data_V2$ride_length)

max(all_data_V2$ride_length, na.rm = T)
min(all_data_V2$ride_length, na.rm = F)

mean(all_data_V2$ride_length,trim = 0, na.rm = T)
median(all_data_V2$ride_length,na.rm = T)

summary(all)

aggregate(all_data_V2$ride_length ~ all_data_V2$usertype, FUN = mean)
aggregate(all_data_V2$ride_length ~ all_data_V2$usertype, FUN = median)
aggregate(all_data_V2$ride_length ~ all_data_V2$usertype, FUN = max)
aggregate(all_data_V2$ride_length ~ all_data_V2$usertype, FUN = min)


aggregate(all_data_V2$ride_length ~ all_data_V2$usertype + all_data_V2$day_of_week, FUN = mean)

all_data_V2$day_of_week <- ordered(all_data_V2$day_of_week, levels=c("Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"))

aggregate(all_data_V2$ride_length ~ all_data_V2$usertype + all_data_V2$day_of_week, FUN = mean)

all_trips_v2 %>% 
  mutate(weekday = wday(started_at, label = TRUE)) %>%  
  group_by(member_casual, weekday) %>%  
  summarise(number_of_rides = n()	
            ,average_duration = mean(ride_length)) %>% 
  arrange(member_casual, weekday)

all_data_V2 %>%
  mutate(weekday = wday(start_time, label = TRUE)) %>%
  group_by(usertype, weekday) %>%
  summarise(number_of_rides = n()
            ,average_duration = mean(ride_length)) %>%
  arrange(usertype, weekday)


  
  



