fulldata <- read.table("household_power_consumption.txt", na.strings = "?", sep=";", header=TRUE)

smalldata <- subset(fulldata, Date == "1/2/2007" | Date == "2/2/2007")

datetime <- strptime(paste(smalldata$Date, smalldata$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
png("plot3.png", width=480, height=480)
plot(datetime, smalldata$Sub_metering_1, type="l", xlab = "",ylab = "Energy sub metering")
lines(datetime,smalldata$Sub_metering_2, type="l", col="red")
lines(datetime,smalldata$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=1, col=c("black", "red", "blue"))

dev.off()
