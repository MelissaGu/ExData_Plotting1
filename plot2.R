file <- read.csv("./Week 1/household_power_consumption.txt",sep=";",na.strings="?")
file2007 <- subset(file, Date %in% c("1/2/2007","2/2/2007"))
DateTime <- paste(file2007$Date,file2007$Time,sep=" ")
DateTime <- strptime(DateTime,"%d/%m/%Y %H:%M:%S")
file2007v2 <- cbind(file2007,DateTime)
class(DateTime)
png(file="plot2.png",width=480,height=480)
plot(file2007v2$DateTime,file2007v2$Global_active_power,type="l",ylab="Global Active Power(kilowatts)",xlab="")
dev.off()


