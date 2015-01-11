setwd("C:/.")

# For code on loading data and creating new data set see plot1.R

# Create plot 4

   png("plot4.png", width=480, height=480)

   par(mfrow = c(2,2))

# Plot 4.1

   plot(NewHHpowcon$Time, NewHHpowcon$Global_active_power, type="l", 
   xlab="", ylab="Global Active Power")

# Plot 4.2

   plot(NewHHpowcon$Time, NewHHpowcon$Voltage, type = "l", 
   xlab = "datetime", ylab = "Voltage")

# Plot 4.3

   plot(NewHHpowcon$Time, NewHHpowcon$Sub_metering_1, type = "l", xlab="", 
   ylab="Energy sub metering")
   lines(NewHHpowcon$Time, NewHHpowcon$Sub_metering_1, col="black")
   lines(NewHHpowcon$Time, NewHHpowcon$Sub_metering_2, col="red")
   lines(NewHHpowcon$Time, NewHHpowcon$Sub_metering_3, col="blue")
   legend("topright", lwd=1, pt.cex = 0.6, cex = 0.6, bty = "n",
   col=c("black","blue","red"), 
   legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

# Plot 4.4

   plot(NewHHpowcon$Time, NewHHpowcon$Global_reactive_power, type = "l", 
   xlab = "datetime", ylab = "Global_reactive_power")

   dev.off()

