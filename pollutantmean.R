pollutantmean <- function(directory, pollutant, id = 1:332){
  directory <- paste(getwd(),"/",directory,"/",sep = "")
  file_in_dir <- list.files(directory)
  data <- NA
  for (i in id){
    file_dir <- paste(directory,file_in_dir[i],sep = "")
    file <- read.csv(file_dir)
    
    data <- rbind(data,file)
  }
  mean(data[[pollutant]],na.rm = TRUE)
}

