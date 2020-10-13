complete <- function(directory, id = 1:2726) {
  # list files
  files_full <- list.files(getwd(), full.names = TRUE)
  files_toread <- files_full[id] # filter out unwanted files (tip: ?grep is better)
  
  dat <- data.frame()
 #output <- data.frame(id = id, nobs = 0)
  for (i in id) { 
   dat <- read.delim(files_toread[i]) # read the data
 
   dat <-rbind(dat, data.frame(i))
   colnames(dat) <- c("Produksjonsdato", "Id_2", "Verdi", "nn")
   
   return(dat)
  }
   dat
}


library(tidyverse)   
mean_vector <- c()
# find all files in the  folder
all_files <- as.character( list.files(getwd()) )

ant <- integer()
ant <- length(all_files)
file_paths <- paste(getwd(),"/", all_files, sep="")
data4 <- data.frame()
for(i in 1:ant) {
  current_file <- read.csv(file_paths[i], header=T, sep=" ")
  data4 <- bind_rows(data4, current_file)
    i = i + 1
}







corr <- function(directory, threshold = 0)
{
  #create list of all files
  files_full <- list.files(directory, full.names= TRUE)
  # create empty data set
  dat <- vector(mode = "numeric", length = 0)
  for(i in 1:2750)
  {
    # Read File
    tmp <- read.delim(files_full[i])
    
  
    
  }
  
  dat
  tmp
}
