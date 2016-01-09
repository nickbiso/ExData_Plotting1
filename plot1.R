data <- read.table("household_power_consumption.txt",
                  skip = 66637, nrow = 2880, sep = ";", 
                  col.names = colnames(read.table(
                       "household_power_consumption.txt",
                       nrow = 1, header = TRUE, sep=";")))
png(filename="plot1.png", height=480, width=480,bg="white")
hist(data$Global_active_power,main = "Global Active Power",
     xlab = "Global Active Power(kilowatts)",col = "red",ylim = c(0,1400))
dev.off()

