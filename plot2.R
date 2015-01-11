setwd("C:/.")

# For code on loading data and creating new data set see plot1.R

# Create plot 2

   png("plot2.png", width = 480, height = 480)
   plot(NewHHpowcon$Time, NewHHpowcon$Global_active_power, type = "l",
   xlab = "", ylab = "Global Active Power (kilowatts)")
   dev.off()
