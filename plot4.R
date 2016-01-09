data <- read.table("household_power_consumption.txt",
                   skip = 66637, nrow = 2880, sep = ";", 
                   col.names = colnames(read.table(
                        "household_power_consumption.txt",
                        nrow = 1, header = TRUE, sep=";")))
png(filename="plot4.png", height=480, width=480,bg="white")
par(mfrow=c(2,2),mar=c(2,4,2,1))
weekDays <- strptime(paste(data$Date, data$Time), format='%d/%m/%Y %H:%M:%S')
#Upper Left
plot(weekDays, data$Global_active_power, type="l", xlab="",ylab = "Global reactive power")
#Upper Right
plot(weekDays, data$Voltage, type="l", xlab="",ylab = "Voltage")
#Lower Left
plot(weekDays, data$Sub_metering_1, type="n", xlab="", ylab="Energy sub metering")
points(weekDays,data$Sub_metering_1,type="l",col="black")
points(weekDays,data$Sub_metering_2,type="l",col="red")
points(weekDays,data$Sub_metering_3,type="l",col="blue")
legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1)
#Lower Right
plot(weekDays, data$Global_reactive_power, type="l", xlab="", ylab = "Global reactive power")
dev.off()



