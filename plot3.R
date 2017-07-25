file <- read.csv("./Week 1/household_power_consumption.txt",sep=";",na.strings="?")
file2007 <- subset(file, Date %in% c("1/2/2007","2/2/2007"))
DateTime <- paste(file2007$Date,file2007$Time,sep=" ")
DateTime <- strptime(DateTime,"%d/%m/%Y %H:%M:%S")
file2007v2 <- cbind(file2007,DateTime)
png(filename = "plot3.png",height=480,width=480)
plot(file2007v2$DateTime,file2007v2$Sub_metering_1,type="l",ylab="Energy sub metering",xlab="")
lines(file2007v2$DateTime,file2007v2$Sub_metering_2,col="red")
lines(file2007v2$DateTime,file2007v2$Sub_metering_3,col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,lwd=1,col = c("black","red","blue"))
dev.off()


