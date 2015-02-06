#Exploratory-Data-Analysis
#Homework Week 1

#Plot 3

#setwd("/Users/nico/Documents/dev/coursera/data-science/datasciencecoursera/Exploratory-Data-Analysis/ExData_Plotting1/")
plot3 = function() {
  
  source("loadData.R")
  df = loadData()
  
  if(!exists("df") | is.null(df)) {
    stop("data frame no loaded")
  }
  
  total_rows = nrow(df)
  
  png("plot3.png",width = 480, height = 480)
  
  plot(df$Sub_metering_1, type="l", axes=FALSE, ann=FALSE)
  lines(df$Sub_metering_2, type="l",  col="red")
  lines(df$Sub_metering_3, type="l",  col="blue")
  
  axis(1, at=c(0, total_rows / 2, total_rows ), lab=c("Thu", "Fri", "Sat"))
  axis(2,at=c(0,10,20,30,40))
  
  legend("topright",c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), col=c("black","blue","red"), lty=1)
  
  title(ylab="Energy sub metering")
  box() 
  
  dev.off()
}