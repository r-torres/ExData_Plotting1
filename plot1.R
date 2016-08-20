fulldata <- read.table("household_power_consumption.txt", na.strings = "?", sep=";", header=TRUE)

smalldata <- subset(fulldata, Date == "1/2/2007" | Date == "2/2/2007")
png("plot1.png", width=480, height=480)
hist(smalldata$Global_active_power, main= "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab= "Frequency", col = "red")


dev.off()