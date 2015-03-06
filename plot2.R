#Exploratory Analysis
#Project 1: Plot 2
# Daniel Romero Rodriguez

Consumption<-read.table("household_power_consumption.txt",header =TRUE,sep=";",stringsAsFactors = FALSE)
ConsumptionRange<- Consumption[Consumption$Date %in% c("1/2/2007","2/2/2007") ,]

#Check dataset
nrow(ConsumptionRange)
head(ConsumptionRange)

#Generate the .png file
DateAndTime <- strptime(paste(ConsumptionRange$Date, ConsumptionRange$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
png("plot2.png",height=480,width=480)
with(ConsumptionRange,plot(DateAndTime,as.numeric(Global_active_power),ylab="Global Active Power (kilowatts)",xlab="",type="l",col="red"))
dev.off()