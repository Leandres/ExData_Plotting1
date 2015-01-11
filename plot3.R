setwd("C:/.")

# For code on loading data and creating new data set see plot1.R

# Create plot 3

   png("plot3.png", width = 480, height = 480)
   plot(NewHHpowcon$Time, NewHHpowcon$Sub_metering_1, type = "l", xlab = "",
   ylab = "Energy sub metering")
   lines(NewHHpowcon$Time, NewHHpowcon$Sub_metering_1, col = "black")
   lines(NewHHpowcon$Time, NewHHpowcon$Sub_metering_2, col = "red")
   lines(NewHHpowcon$Time, NewHHpowcon$Sub_metering_3, col = "blue")
   legend("topright", lty = 1, lwd = 1, col=c("black","blue","red"),
   legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
   dev.off()