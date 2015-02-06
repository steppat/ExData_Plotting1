#Exploratory-Data-Analysis
#Homework Week 1

#When loading the dataset into R, please consider the following:

#The dataset has 2,075,259 rows and 9 columns. First calculate a rough estimate 
#of how much memory the dataset will require in memory before reading into R. 
#Make sure your computer has enough memory (most modern computers should be fine).

#We will only be using data from the dates 2007-02-01 and 2007-02-02. 
#One alternative is to read the data from just those dates rather than reading 
#in the entire dataset and subsetting to those dates.

#You may find it useful to convert the Date and Time variables to 
#Date/Time classes in R using the strptime() and as.Date() functions.

#Note that in this dataset missing values are coded as ?.

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