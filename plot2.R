fulldata <- read.table("household_power_consumption.txt", na.strings = "?", sep=";", header=TRUE)

smalldata <- subset(fulldata, Date == "1/2/2007" | Date == "2/2/2007")

datetime <- strptime(paste(smalldata$Date, smalldata$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
png("plot2.png", width=480, height=480)
plot(datetime, smalldata$Global_active_power, type="l", xlab = "",ylab = "Global Active Power (kilowatts)")

dev.off()