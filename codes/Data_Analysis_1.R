
#Practical No.1
i <- 1
repeat {
  if (i %% 2 == 0) {
    print(i)
  }
  i <- i + 1
  if (i > 100) {
    break
  }
}