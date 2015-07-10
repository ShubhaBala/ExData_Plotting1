# Plots the Global Active Power by each minute, over the course of 2 days - Thursday and Friday

png("plot2.png", width = 480, height = 480)
plot(data[,10],data[,"Global_active_power"], type="l", ylab="Global Active Power (kilowatts)", xlab="", xaxt = "n")

# Calculate where the beginning, middle, and end of the x-axis are
x=c(data[1,10], data[length(data[,10])/2, 10], data[length(data[,10]),10])
# Add appropriate labels - Thursday, Friday for the middle, and ending with Saturday
axis(1, at=x, labels=c("Thu","Fri","Sat"))
dev.off()