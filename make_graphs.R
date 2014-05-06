process.power.data <- function(file) {
  my.data <- read.csv(file)
  my.data[,1] <- as.Date(my.data[,1])
  my.col.names <- c("date", "time", "global_active_power", "global_reactive_power", "voltage", "global_intensity", "sub_metering_1", "sub_metering_2", "sub_metering_3")
  my.data.frame <- data.frame(my.data)
  colnames(my.data.frame) <- my.col.names
  my.data.frame
}

