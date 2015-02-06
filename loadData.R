
loadData = function(){

  unzip("exdata-data-household_power_consumption.zip")
  
  filename = "household_power_consumption.txt"
  df = read.table(filename, sep=";",header = TRUE, na.strings='?')
  
  if(nrow(df) != 2075259 || ncol(df) != 9) {
    msg = paste("Wrong number of rows or columns in", filename, sep = " ")
    stop(msg)
  }
  
  #convert data
  df$Date = as.Date(df$Date,"%d/%m/%Y")
  
  #filter by dates
  startDate = as.Date("2007-02-01","%Y-%m-%d")
  endDate   = as.Date("2007-02-02","%Y-%m-%d")
  df = df[df$Date >=  startDate & df$Date <= endDate,] #or df = subset (df, Date >= startDate & Date <= endDate)
  
  #convert to numeric
  df$Global_active_power = sapply(df$Global_active_power, as.numeric)
  df
}