setwd("C:.")

# Read data into a table with appropriate classes

   HHpowcon <- read.table("household_power_consumption.txt", header=TRUE,
   na.strings = "?", sep = ";")

# Check if data are loaded well
 # head(HHpowcon)

# Convert the dates and times

   HHpowcon$Date <- as.Date(HHpowcon$Date, format = "%d/%m/%Y")
 # head(HHpowcon$Date)

# Create subset for only two days

   NewHHpowcon1 <- subset(HHpowcon, HHpowcon$Date == as.Date("2007-02-01"))
 # head(NewHHpowcon1)
   NewHHpowcon2 <- subset(HHpowcon, HHpowcon$Date == as.Date("2007-02-02"))
 # head(NewHHpowcon2)
   NewHHpowcon <- rbind(NewHHpowcon1, NewHHpowcon2)
 # head(NewHHpowcon)

# combine date and time

   NewHHpowcon$Time <- paste(NewHHpowcon$Date, NewHHpowcon$Time, sep = " ")
   NewHHpowcon$Time <- strptime(NewHHpowcon$Time, "%Y-%m-%d %H:%M:%S")
 # head(NewHHpowcon$Time)
 # head(NewHHpowcon)

# Create plot 1
   png("plot1.png", width = 480, height = 480)
   hist(NewHHpowcon$Global_active_power, main = "Global Active Power",
   col = "red", xlab = "Global Active Power (kilowatts)", ylab="Frequency")
   dev.off()