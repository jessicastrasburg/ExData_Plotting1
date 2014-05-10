##setwd("C:/Users/dm1-3255br/Desktop/R/Week1")
data<-as.matrix(read.table("household_power_consumption.txt",header=TRUE,sep=";"))
	day1<-which(data[,1]=="1/2/2007")
	day2<-which(data[,1]=="2/2/2007")
	days<-c(day1,day2)
	x<-(strptime((paste(data[days,1],data[days,2])), "%d/%m/%Y %H:%M:%S"))

Sys.setlocale("LC_TIME", "English")

	weekday<-weekdays(as.Date(data[days,1],"%d/%m/%Y"),abbreviate = TRUE)
	##print(weekday)
	png("plot2.png", 480,480)
	plot(x,data[days,3], type="l",ylab="Global Active Power (kilowatts)",xlab="")
	dev.off()
