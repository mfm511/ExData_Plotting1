setwd("D://COURSERA//DATA_SCIENCE//4.Exploratory_Data_Analysis/Project and Assignments")
completedata <- read.table("household_power_consumption.txt", sep = ";", header=TRUE, colClasses=c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"),na.strings="?")
mydata <- subset(completedata,Date == "1/2/2007" | Date == "2/2/2007")
png("plot1.png",height=480,width=480)
hist(mydata$Global_active_power,main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab = "Frequency", col = "red")
dev.off()