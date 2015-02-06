#Exploratory-Data-Analysis

#Homework Week 1

#Plot 4

#setwd("/Users/nico/Documents/dev/coursera/data-science/datasciencecoursera/Exploratory-Data-Analysis/ExData_Plotting1/")
plot4 = function() {
  
  source("loadData.R")
  df = loadData()
  
  if(!exists("df") | is.null(df)) {
    stop("data frame no loaded")
  }
  png("plot4.png",width = 480, height = 480)
  
  par(mfrow=c(2,2))
  
  plotTopLeft(df)
  plotTopRight(df)
  plotBottomLeft(df)
  plotBottomRight(df)
  
  dev.off()
}

plotTopLeft = function(df) {
  total_rows = nrow(df)
  plot(df$Global_active_power, type="l", axes=FALSE, ann=FALSE)
  axis(1, at=c(0, total_rows / 2, total_rows ), lab=c("Thu", "Fri", "Sat"))
  axis(2,at=c(0,2,4,6,8))
  title(ylab="Global Active Power (kilowatts)")
  box() 
}

plotTopRight = function(df) {
  total_rows = nrow(df)
  plot(df$Voltage, type="l", axes=FALSE, ann=FALSE)
  axis(1, at=c(0, total_rows / 2, total_rows ), lab=c("Thu", "Fri", "Sat"))
  axis(2, tick =TRUE,at=c(234,238,242,246))
  title(ylab="Voltage", xlab = "daytime")
  box() 
}

plotBottomLeft = function(df) {
  total_rows = nrow(df)
  
  plot(df$Sub_metering_1, type="l", axes=FALSE, ann=FALSE)
  lines(df$Sub_metering_2, type="l",  col="red")
  lines(df$Sub_metering_3, type="l",  col="blue")
  
  axis(1, at=c(0, total_rows / 2, total_rows ), lab=c("Thu", "Fri", "Sat"))
  axis(2,at=c(0,10,20,30,40))
  
  legend("topright",c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), col=c("black","blue","red"), lty=1)
  
  title(ylab="Energy sub metering")
  box() 
}

plotBottomRight = function(df) {
  total_rows = nrow(df)
  plot(df$Global_reactive_power, type="l", axes=FALSE, ann=FALSE)
  axis(1, at=c(0, total_rows / 2, total_rows ), lab=c("Thu", "Fri", "Sat"))
  axis(2,at=c(0.0,0.1,0.2,0.3,0.4,0.5))
  title(ylab="Global_reactive_power", xlab = "daytime")
  box() 
}