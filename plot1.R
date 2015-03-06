#Exploratory Analysis
#Project 1: Plot 1
# Daniel Romero Rodriguez

Consumption<-read.table("household_power_consumption.txt",header =TRUE,sep=";",stringsAsFactors = FALSE)
ConsumptionRange<- Consumption[Consumption$Date %in% c("1/2/2007","2/2/2007") ,]

#Check dataset
nrow(ConsumptionRange)
head(ConsumptionRange)

#Generate the .png file

png("plot1.png",height=480,width=480)
with(ConsumptionRange,hist(as.numeric(Global_active_power),xlab="Global Active Power (kilowatts)",ylab="Frequency",main="Global Active Power",col="red"))
dev.off()