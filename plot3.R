source("getData.R")

data <- get.data() # read and filter data


with(data, {
  # setup the plot and add black line for Sub_metering_1
  plot(datetime, Sub_metering_1, xlab="", ylab = "Energy sub metering", type = "l", col="black")
  # add red line for Sub_metering_2
  lines(datetime, Sub_metering_2, col = "red")
  # add blue line for Sub_metering_3
  lines(datetime, Sub_metering_3, col = "blue")
})
legend("topright", lty=1,col = c("black", "blue", "red"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

# save the plot to plot3.png
dev.copy(png, file = "plot3.png", width=480, height=480) # copy the plot to the png file
dev.off() # close png device