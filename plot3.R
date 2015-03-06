#Exploratory Analysis
#Project 1: Plot 3
# Daniel Romero Rodriguez

Consumption<-read.table("household_power_consumption.txt",header =TRUE,sep=";",stringsAsFactors = FALSE)
ConsumptionRange<- Consumption[Consumption$Date %in% c("1/2/2007","2/2/2007") ,]

#Check dataset
nrow(ConsumptionRange)
head(ConsumptionRange)

#Generate the .png file
DateAndTime <- strptime(paste(ConsumptionRange$Date, ConsumptionRange$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
png("plot3.png",height=480,width=480)
with(ConsumptionRange,plot(DateAndTime,as.numeric(Sub_metering_1),ylab="Energy Submetering",xlab="",type="l",col="black"))
lines(DateAndTime,as.numeric(ConsumptionRange$Sub_metering_2),type="l",col="red")
lines(DateAndTime,as.numeric(ConsumptionRange$Sub_metering_3),type="l",col="blue")
legend("topright",c("Sub metering 1","Sub metering 2","Sub metering 3"),lty =1 ,lwd=2 ,col=c("black","red","blue"))

dev.off()