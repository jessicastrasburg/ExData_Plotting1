##setwd("C:/Users/dm1-3255br/Desktop/R/Week1")
data<-as.matrix(read.table("household_power_consumption.txt",header=TRUE,sep=";"))
	day1<-which(data[,1]=="1/2/2007")
	day2<-which(data[,1]=="2/2/2007")
	days<-c(day1,day2)
	thu<-0
	fri<-length(day1)
	sat<-length(days)


	png("plot1.png", 480,480)
	hist(as.numeric(data[days,3]),col="red",main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency")
	dev.off()

