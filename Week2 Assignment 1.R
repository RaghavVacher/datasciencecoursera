pollutantmean <- function(directory, pollutant, id = 1:332) {
        path <- list.files(path = directory, pattern = ".csv", full.names = TRUE)
        total <- numeric()
        
        for (i in id) {
                read <- read.csv(path[i])
                total <- c(total, read[[pollutant]])
        }
        
        mean(total, na.rm = TRUE)
}
