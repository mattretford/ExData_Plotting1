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

png(filename = 'plot1.png')
hist(data$Global_active_power, col="red", main='Global Active Power', xlab="Global Active Power (kilowatts)", ylab="Frequency")
dev.off()
