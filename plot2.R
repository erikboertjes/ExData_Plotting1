source("getData.R")

data <- get.data() # read and filter data

# draw plot and set axis label
with(data,plot(datetime,Global_active_power,
               type="l",
               xlab="",ylab="Global Active Power (kilowatts)"))

# save the plot to plot2.png
dev.copy(png, file = "plot2.png", width=480, height=480) # copy the plot to the png file
dev.off() # close png device
