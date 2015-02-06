#Exploratory-Data-Analysis
#Homework Week 1

#Plot1

#setwd("/Users/nico/Documents/dev/coursera/data-science/datasciencecoursera/Exploratory-Data-Analysis/ExData_Plotting1/")
plot1 = function() {
  
  source("loadData.R")
  df = loadData()
  
  if(!exists("df") | is.null(df)) {
    stop("data frame no loaded")
  }
  
  png("plot1.png",width = 480, height = 480)
  hist(df$Global_active_power,col="red",main="Global Active Power", xlab = "Global Active Power (kilowatts)")
  dev.off()
}