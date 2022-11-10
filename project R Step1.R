Tranform_data <- all_data_set
head(all_data_set)
rename(Tranform_data,ride_id = trip_id,rideable_type = bikeid 
       ,started_at = start_time  
       ,ended_at = end_time  
       ,start_station_name = from_station_name 
       ,start_station_id = from_station_id 
       ,end_station_name = to_station_name 
       ,end_station_id = to_station_id 
       ,member_casual = usertype)
colnames(all_data_set)
install.packages("dplyr")
?rename
??rename
rename(Tranform_data, ride_id = trip_id,rideable_type = bikeid 
       ,started_at = start_time  
       ,ended_at = end_time  
       ,start_station_name = from_station_name 
       ,start_station_id = from_station_id 
       ,end_station_name = to_station_name 
       ,end_station_id = to_station_id 
       ,member_casual = usertype)

??rename
rename_with(ride_id=trip_id,rideable_type = bikeid 
            ,started_at = start_time  
            ,ended_at = end_time  
            ,start_station_name = from_station_name 
            ,start_station_id = from_station_id 
            ,end_station_name = to_station_name 
            ,end_station_id = to_station_id 
            ,member_casual = usertype)

