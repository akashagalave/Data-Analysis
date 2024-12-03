

#Practical No.7
# Data
study_hours <- c(2, 3, 4, 5, 6, 7, 8)
exam_result <- c(0, 0, 0, 1, 1, 1, 1)
# Fit the logistic regression model
logistic_model <- glm(exam_result ~ study_hours, family = binomial)
# Summarize the model
summary(logistic_model)
# Create a sequence of study hours for predictions
new_study_hours <- seq(1, 9, by = 0.1)
predicted_probabilities <- predict(logistic_model, newdata = data.frame(study_hours = new_study_hours), type = "response")

# Plot the original data
plot(study_hours, exam_result, 
     main = "Logistic Regression: Study Hours vs Exam Result", 
     xlab = "Study Hours", ylab = "Exam Result (0 = Fail, 1 = Pass)", 
     pch = 19, col = "blue", ylim = c(-0.1, 1.1))

# Add the logistic regression curve
lines(new_study_hours, predicted_probabilities, col = "red", lwd = 2)