##setwd("C:/Users/dm1-3255br/Desktop/R/Week1")
data<-as.matrix(read.table("household_power_consumption.txt",header=TRUE,sep=";"))
	day1<-which(data[,1]=="1/2/2007")
	day2<-which(data[,1]=="2/2/2007")
	days<-c(day1,day2)
	x<-(strptime((paste(data[days,1],data[days,2])), "%d/%m/%Y %H:%M:%S"))

Sys.setlocale("LC_TIME", "English")


	png("plot3.png", 480,480)
	plot(x,data[days,7], type="l", xlab="", ylab="Energy sub metering")
	lines(x,data[days,8], type="l",col="red")
	lines(x,data[days,9], type="l",col="blue")
	legend("topright", (names(data[1,])[7:9]),lty=c(1,1), col=c("black","red","blue"))
	dev.off()
