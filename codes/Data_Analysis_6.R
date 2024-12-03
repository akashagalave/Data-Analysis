

#Practical No.6
# Data
diameter <- c(8, 10, 12)
price <- c(10, 13, 16)
mean_x <- mean(diameter)
mean_y <- mean(price)
deviation_x <- diameter - mean_x
deviation_y <- price - mean_y
product_deviation <- deviation_x * deviation_y
square_deviation_x <- deviation_x^2
sum_product_deviation <- sum(product_deviation)
sum_square_deviation_x <- sum(square_deviation_x)

b <- sum_product_deviation / sum_square_deviation_x
a <- mean_y - b * mean_x
# Plotting
plot(diameter, price, main = "Linear Regression of Price vs Diameter",
     xlab = "Diameter (inches)", ylab = "Price (Dollars)",
     pch = 19, col = "blue", xlim = c(7, 14), ylim = c(9, 17))

# Add regression line
abline(a, b, col = "red", lwd = 2)  # Regression line
mean_x
mean_y
deviation_x
deviation_y
product_deviation
square_deviation_x
sum_product_deviation
sum_square_deviation_x