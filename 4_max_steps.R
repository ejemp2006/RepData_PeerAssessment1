max_steps <- max(steps_per_interval$average_steps)
max_steps
intervale_max_steps<-steps_per_interval[which.max(steps_per_interval$average_steps),]$interval
intervale_max_steps