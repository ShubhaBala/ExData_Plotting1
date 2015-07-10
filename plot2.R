plot(data[,"Global_active_power"], type="l", ylab="Global Active Power (kilowatts)", xlab="", xaxt = "n")
x=c(0, length(data[,"Global_active_power"])/2, length(data[,"Global_active_power"]))
axis(1, at=x, labels=c("Thu","Fri","Sat"))