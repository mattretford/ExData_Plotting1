library(lubridate)
library(readr)

importdata2 <- read_delim("household_power_consumption.txt", delim = ";", na = "?")

importdata2$Date <- dmy(importdata2$Date)

importdata3 <- subset(importdata2, Date >= as.Date("2007-02-01") & Date <= as.Date("2007-02-02"))

write.csv(importdata3, "subset_date.csv", row.names=FALSE)
