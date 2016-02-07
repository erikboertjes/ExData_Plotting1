source("getData.R")

data <- get.data() # read and filter data

# draw histogram and set color, main title and x axis label
hist(data$Global_active_power,
     col="red",
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)")

# save the plot to plot1.png
dev.copy(png, file = "plot1.png", width=480, height=480) # copy the plot to the png file
dev.off() # close png device
