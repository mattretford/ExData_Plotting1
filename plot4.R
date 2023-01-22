### Below commented lines were used to import and prepare the large dataset ###

#library(lubridate)
#library(readr)
#importdata2 <- read_delim("household_power_consumption.txt", delim = ";", na = "?")
#importdata2$Date <- dmy(importdata2$Date)
#importdata3 <- subset(importdata2, Date >= as.Date("2007-02-01") & Date <= as.Date("2007-02-02"))
#importdata3$Datetime <- paste(importdata3$Date, importdata3$Time)
#importdata3$Datetime <- as_datetime(importdata3$Datetime)
#write.csv(importdata3, "subset_data.csv", row.names=FALSE)

data <- read_csv("subset_data.csv")

png(filename = 'plot4.png')
par(mfrow = c(2,2))
plot(data$Datetime, data$Global_active_power, type="l", lty=1, xlab=NA, ylab='Global Active Power')
plot(data$Datetime, data$Voltage, type="l", lty=1, xlab="datetime", ylab='Voltage')
matplot(data$Datetime, data[,7:9], type='l', xlab=NA, ylab='Energy sub metering', col=c("black","red", "blue") )
legend('topright', legend=colnames(data[,7:9]), pch="____", col=c("black","red", "blue"))
plot(data$Datetime, data$Global_reactive_power, type="l", lty=1, xlab="datetime", ylab="Global_reactive_power" )
dev.off()