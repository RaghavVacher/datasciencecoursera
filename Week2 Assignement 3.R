corr1 = function(directory, threshold, id = 1:332) {
  path <- list.files(path = directory, pattern = ".csv", full.names = TRUE)
  total <- numeric()
  

  for(i in id) {
    if(i) {
  read <- read.csv(path[i])
    }
    
    data <- read[complete.cases(read),]
    if(nrow(data) > threshold) {
      total <- c(total, cor(data["sulfate"], data["nitrate"]))
    }
  }
  total
}