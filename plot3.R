# Plots the Sub metering values by each minute, over the course of 2 days - Thursday and Friday

png("plot3.png", width = 480, height = 480)
# Make sure we're plotting on a new plot
par(new=F)

#Plot sub metering 1 values in black
plot(data[,10], data[,"Sub_metering_1"], type="l", ylim=c(0, max(data[,"Sub_metering_1"])), ylab="Energy sub metering", xlab="")
par(new=T)  # Add to the same plot
#Plot sub metering 2 values in red
plot(data[,10], data[,"Sub_metering_2"], type="l", axes=F, ylab="", ylim=c(0, max(data[,"Sub_metering_1"])), col="red", xlab="")
par(new=T)
#Plot sub metering 3 values in blue
plot(data[,10], data[,"Sub_metering_3"], type="l", axes=F, ylab="", ylim=c(0, max(data[,"Sub_metering_1"])), col="blue", xlab="")

#Add a legend to the top right hand corner
leg.txt<-c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
legend("topright", leg.txt, lty=1, col=c('black', 'red', 'blue'), cex=0.75)

# Calculate where the beginning, middle, and end of the x-axis are
x=c(data[1,10], data[length(data[,10])/2, 10], data[length(data[,10]),10])
# Add appropriate labels - Thursday, Friday for the middle, and ending with Saturday
axis(1, at=x, labels=c("Thu","Fri","Sat"))

dev.off()