source("make_graphs.R")
my.data <- process.power.data("pared_down_data.csv")
png(file="plot2.png")
plot(xlab="", ylab = "Global Active Power (kilowatts)", x = as.POSIXct(paste(my.data$date, my.data$time), format="%Y-%m-%d %H:%M:%S"), y = my.data$global_active_power, type="l")
dev.off()


