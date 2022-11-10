#Visualisation 

All_data_V3 %>% 
  mutate(weekday = wday(start_time, label = TRUE)) %>%
  group_by(usertype, weekday) %>%
  summarise(number_of_rides = n()
            ,average_duration = mean(ride_length)) %>% 
  arrange(usertype, weekday)  %>%
  ggplot(aes(x = weekday, y = number_of_rides, fill = usertype)) + geom_col(position = "dodge") + labs(title="Number of Rides Casual vs Member",
                                    y="Number of Rides", x="Weekday", fill="Member Status", caption = "Data by Motivate International Inc") 


All_data_V3 %>% 
  mutate(weekday = wday(start_time, label = TRUE)) %>%
  group_by(usertype, weekday) %>%
  summarise(number_of_rides = n()
            ,average_duration = mean(ride_length)) %>% 
  arrange(usertype, weekday)  %>%
  ggplot(aes(x = weekday, y = average_duration, fill = usertype)) + geom_col(position = "dodge") + labs(title="Average duration Rides Casual vs Member",
                                                                                                       y="Average_duration", x="Weekday", fill="Usertype", caption = "Data by Cyclistic") 


install.packages("magrittr") 
library(magrittr)
library(dplyr)
install.packages("ggplot2")
library(ggplot2)

all_data_V2 %>%
  drop_na()

All_data_V3 <- na.omit(all_data_V2)

summary(All_data_V3)

rm(data_new)

drop(data2_new)

write.csv(All_data_V3, "D:\\project.csv")


