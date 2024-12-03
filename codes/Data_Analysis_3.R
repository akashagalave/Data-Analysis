

#Practical No.3
# Data for Machine 1 and Machine 2
machine1 <- c(151.2, 150.5, 149.2, 147.5, 152.9, 152.0, 151.3, 149.7, 149.4, 150.7)
machine2 <- c(151.9, 151.4, 150.3, 151.2, 151.0, 150.2, 151.2, 151.4, 150.4, 151.7)
# Calculate Mean
mean_machine1 <- mean(machine1)
mean_machine2 <- mean(machine2)
# Calculate Variance
var_machine1 <- var(machine1)
var_machine2 <- var(machine2)
# Calculate Standard Deviation
sd_machine1 <- sd(machine1)
sd_machine2 <- sd(machine2)
# Display results
print(paste("Mean of Machine 1:", mean_machine1))
print(paste("Mean of Machine 2:", mean_machine2))
print(paste("Variance of Machine 1:", var_machine1))
print(paste("Variance of Machine 2:", var_machine2))
print(paste("Standard Deviation of Machine 1:", sd_machine1))
print(paste("Standard Deviation of Machine 2:", sd_machine2))
