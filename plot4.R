source("getData.R")

data <- get.data() # read and filter data

# setup multiple plots in a 2 by 2 grid 
par(mfrow = c(2,2))

with (data, {
  # upper left plot
  plot(datetime,Global_active_power,
       type="l",
       xlab="",ylab="Global Active Power (kilowatts)")
  
  # upper right plot
  plot(datetime,Voltage,
     type="l")

  # lower left plot
  # setup the plot and add black line for Sub_metering_1
  plot(datetime, Sub_metering_1, xlab="", ylab = "Energy sub metering", type = "l", col="black")
  # add red line for Sub_metering_2
  lines(datetime, Sub_metering_2, col = "red")
  # add blue line for Sub_metering_3
  lines(datetime, Sub_metering_3, col = "blue")
  
  # lower right plot
  plot(datetime,Global_reactive_power,
       type="l")
})

par(mfrow=c(1,1))

# save the plot to plot4.png
dev.copy(png, file = "plot4.png", width=480, height=480) # copy the plot to the png file
dev.off() # close png device