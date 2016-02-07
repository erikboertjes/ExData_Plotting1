
# reads data from file and filters out the measurements for the two days
get.data <- function() {
  data.dir <- "data"
  data.file <- "household_power_consumption.txt"
  start.date <- as.Date("2007-02-01","%Y-%m-%d")
  end.date <- as.Date("2007-02-02", "%Y-%m-%d")
  
  # read all data
  data.all <- read.table(file.path(data.dir,data.file), sep=";", header= TRUE, na.strings = "?")
  # filter data: only use data between (and including) start and end date
  data <- subset(data.all,as.Date(Date,"%d/%m/%Y") >= start.date & as.Date(Date,"%d/%m/%Y") <= end.date)
  # add a datatime column
  data$datetime <- strptime(with(data,paste(Date,Time)), format="%d/%m/%Y %H:%M:%S")
  return (data)
}