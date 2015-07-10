plot(data[,10],data[,"Global_active_power"], type="l", ylab="Global Active Power (kilowatts)", xlab="", xaxt = "n")
x=c(data[1,10], data[length(data[,10])/2, 10], data[length(data[,10]),10])
axis(1, at=x, labels=c("Thu","Fri","Sat"))