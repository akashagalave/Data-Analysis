

#Practical No.2
student_data <- read.csv("data\Student Data.csv")
student_data
num_rows <- nrow(student_data)
num_cols <- ncol(student_data)
print(paste("Number of Rows:", num_rows))
print(paste("Number of Columns:", num_cols))
print("Column Names:")
print(colnames(student_data))
student_data
print("First 5 Rows:")
print(head(student_data, 5))

print("Last 2 Rows:")
print(tail(student_data, 2))
student_data <- student_data[-3, ]
print("Data after deleting 3rd row:")
print(student_data)

colnames(student_data)[which(colnames(student_data) == "Phone.No")] <- "Mobile.No"
print("Column names after renaming:")
print(colnames(student_data))
