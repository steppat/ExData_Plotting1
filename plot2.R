#Exploratory-Data-Analysis
#Homework Week 1

#Plot 2

#setwd("/Users/nico/Documents/dev/coursera/data-science/datasciencecoursera/Exploratory-Data-Analysis/ExData_Plotting1/")
plot2 = function() {
  
  source("loadData.R")
  df = loadData()
  
  if(!exists("df") | is.null(df)) {
    stop("data frame no loaded")
  }
  
  total_rows = nrow(df)
  
  png("plot2.png",width = 480, height = 480)
  plot(df$Global_active_power, type="l", axes=FALSE, ann=FALSE)
  axis(1, at=c(0, total_rows / 2, total_rows ), lab=c("Thu", "Fri", "Sat"))
  axis(2,at=c(0,2,4,6,8))
  title(ylab="Global Active Power (kilowatts)")
  box() 
  dev.off()
}