pollutantinfo <- function(directory, pollutant, id = 1:332) {
  path <- list.files(path = directory, pattern = ".csv", full.names = TRUE)
  NA_cases = numeric()
  
  
  for (i in id) {
    read <- read.csv(path[i])
    NA_cases <- c(NA_cases, sum(complete.cases(read[[pollutant]])))
   
    
  }
  
  data.frame( id , NA_cases)
}

