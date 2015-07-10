png("plot4.png", width = 480, height = 480)

# Define a page with a 2x2 plot grid
par(mfcol=c(2,2))

#Plots the frequency of different levels of Global Active Power
plot(data[,10],data[,"Global_active_power"], type="l", ylab="Global Active Power (kilowatts)", xlab="", xaxt = "n")
#Define where the x axis ticks should go for ALL plots
x=c(data[1,10], data[length(data[,10])/2, 10], data[length(data[,10]),10])
axis(1, at=x, labels=c("Thu","Fri","Sat"))

# Plots the Sub metering values by each minute, over the course of 2 days with a legend
plot(data[,10], data[,"Sub_metering_1"], type="l", ylim=c(0, max(data[,"Sub_metering_1"])), ylab="Energy sub metering", xlab="")
par(new=T)
plot(data[,10], data[,"Sub_metering_2"], type="l", axes=F, ylab="", ylim=c(0, max(data[,"Sub_metering_1"])), col="red", xlab="")
par(new=T)
plot(data[,10], data[,"Sub_metering_3"], type="l", axes=F, ylab="", ylim=c(0, max(data[,"Sub_metering_1"])), col="blue", xlab="")
leg.txt<-c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
legend("topright", leg.txt, lty=1, col=c('black', 'red', 'blue'), cex=0.75)
axis(1, at=x, labels=c("Thu","Fri","Sat"))

# Plots the Voltage values by each minute over the course of 2 days
plot(data[,10], data[,"Voltage"], type="l", xlab="datetime", ylab="Voltage")
axis(1, at=x, labels=c("Thu","Fri","Sat"))

# Plots the Global Reactive Power values by each minute over the course of 2 days
plot(data[,10], data[,"Global_reactive_power"], type="l", ylab="Global_reactive_power", xlab="datetime")
axis(1, at=x, labels=c("Thu","Fri","Sat"))

dev.off()