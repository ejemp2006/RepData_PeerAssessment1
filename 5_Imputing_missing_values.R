sum(is.na(as.character(data$steps)))
sum(is.na(as.character(data$date)))
sum(is.na(as.character(data$interval)))
NA_index <- which(is.na(as.character(data$steps)))
complete_data <- data
complete_data[NA_index, ]$steps<-unlist(lapply(NA_index, FUN=function(NA_index){steps_per_interval[data[NA_index,]$interval==steps_per_interval$interval,]$average_steps}))
summary(complete_data)
str(complete_data)