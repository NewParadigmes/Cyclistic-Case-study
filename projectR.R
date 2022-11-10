# Cleaning DATA

colnames(data2_new)  #List of column names
nrow(data2_new)  #How many rows are in data frame?
dim(data2_new)  #Dimensions of the data frame?
head(data2_new)  #See the first 6 rows of data frame.  Also tail(all_trips)
str(data2_new)  #See list of columns and data types (numeric, character, etc)
summary(data2_new)  #Statistical summary of data. Mainly for numerics

str("usertype")

#The default format is yyyy-mm-dd
data2_new$date <- as.Date(data2_new$start_time) 
data2_new$month <- format(as.Date(data2_new$date), "%m")
data2_new$day <- format(as.Date(data2_new$date), "%d")
data2_new$year <- format(as.Date(data2_new$date), "%Y")
data2_new$day_of_week <- format(as.Date(data2_new$date), "%A")

data2_new$ride_length <- difftime(data2_new$end_time,data2_new$start_time)

str(data2_new)

subset(data2_new, ride_id)

subset(data2_new, select = -c(ride_id,rideable_type))

data2_new$member_casual

all_data_V2 <- data2_new[!(data2_new$ride_length<0),]

is.factor(all_data_V2$ride_length)
all_data_V2$ride_length <- as.numeric(as.character(all_data_V2$ride_length))
is.numeric(all_data_V2$ride_length)


