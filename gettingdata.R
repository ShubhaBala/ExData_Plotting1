library(sqldf)
data <- read.csv.sql("household_power_consumption.txt", 
                      sql = "select * from file WHERE Date = '1/2/2007' OR Date = '2/2/2007'", sep=";",eol = "\n")
data["DateTime"]<- paste(data[,1], data[,2])
library(lubridate)
data[,10]<-dmy_hms(data[,10])