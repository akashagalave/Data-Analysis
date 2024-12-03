

#Practical No.5
library(nycflights13)
# Histogram of flight distances for all airlines
hist(flights$distance, 
     main = "Histogram of Flight Distances (All Airlines)", 
     xlab = "Distance (miles)", 
     xlim = c(0, 5000), 
     col = "lightblue", 
     border = "black")
# Filter data for UA and AA flights
ua_flights <- subset(flights, carrier == "UA")
aa_flights <- subset(flights, carrier == "AA")

# Plot histogram for UA flights
hist(ua_flights$distance, 
     main = "Histogram of UA Flight Distances", 
     xlab = "Distance (miles)", 
     xlim = c(0, 5000), 
     col = "blue", 
     border = "black")

# Plot histogram for AA flights
hist(aa_flights$distance, 
     main = "Histogram of AA Flight Distances", 
     xlab = "Distance (miles)", 
     xlim = c(0, 5000), 
     col = "red", 
     border = "black")
# Boxplot for UA and AA flight distances
boxplot(ua_flights$distance, aa_flights$distance, 
        names = c("UA", "AA"), 
        main = "Boxplot of Flight Distances for UA and AA", 
        xlab = "Airlines", 
        ylab = "Distance (miles)", 
        col = c("blue", "red"))
# Add vertical line at the mean distance for UA flights
abline(v = mean(ua_flights$distance), col = "blue", lwd = 2)

# Add vertical line at the mean distance for AA flights
abline(v = mean(aa_flights$distance), col = "red", lwd = 2)
