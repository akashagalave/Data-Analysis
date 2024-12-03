

#Practical No.4
library(nycflights13)
# Filter data for UA and AA airlines
ua_flights <- subset(flights, carrier == "UA")
aa_flights <- subset(flights, carrier == "AA")
# Scatter plot for UA flights
plot(ua_flights$distance, ua_flights$dep_delay, 
     xlim = c(0, 5000), ylim = c(-50, 1000), 
     col = "blue", pch = 16, 
     xlab = "Distance (miles)", ylab = "Departure Delay (minutes)", 
     main = "UA vs AA Flights: Departure Delay vs Distance")

# Add scatter plot for AA flights on the same plot
points(aa_flights$distance, aa_flights$dep_delay, 
       col = "red", pch = 16)

# Add a horizontal line at y = 0 (indicating no delay)
abline(h = 0, col = "black", lwd = 2)

# Add a legend to differentiate between UA and AA airlines
legend("topright", legend = c("UA", "AA"), col = c("blue", "red"), pch = 16)