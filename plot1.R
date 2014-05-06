source("make_graphs.R")
my.data <- process.power.data("pared_down_data.csv")
png(file="plot1.png")
hist(x=my.data$global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")
dev.off()


