source("make_graphs.R")
my.data <- process.power.data("pared_down_data.csv")
png(file="plot4.png")
par(mfrow=c(2,2))

#graph 1
plot(xlab="", ylab = "Global Active Power", x = as.POSIXct(paste(my.data$date, my.data$time), format="%Y-%m-%d %H:%M:%S"), y = my.data$global_active_power, type="l")


#graph 2
plot(xlab="datetime", ylab = "Voltage", x = as.POSIXct(paste(my.data$date, my.data$time), format="%Y-%m-%d %H:%M:%S"), y = my.data$voltage, type="l")

#graph 3
plot(as.POSIXct(paste(my.data$date, my.data$time)), my.data$sub_metering_1, type="l", col="black", xlab="", ylab="Energy sub metering")
lines(as.POSIXct(paste(my.data$date, my.data$time)), my.data$sub_metering_2, type="l", col="red")
lines(as.POSIXct(paste(my.data$date, my.data$time)), my.data$sub_metering_3, type="l", col="purple")
legend("topright", lty="solid", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "purple"))

#graph 4
plot(xlab="", ylab = "Global_reative_power", x = as.POSIXct(paste(my.data$date, my.data$time), format="%Y-%m-%d %H:%M:%S"), y = my.data$global_reactive_power, type="l")


dev.off()
