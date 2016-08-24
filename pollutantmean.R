pollutantmean <- function(directory, pollutant, id = 1:332) {
  
  files_list <- list.files(directory, full.names=TRUE)    # reads list of csv files
  dat <- data.frame()                                     #blank dataframe for rbind() of 331 specdata csv files
  
  for (i in id) {   
                                                           # loop, iterates as many times as id (third argument in pollutantmean())
    dat <- rbind(dat, read.csv(files_list[i]))
  }
  
    if (pollutant == 'sulfate') {                         # if pollutant is 'sulfate,' 
    mean(dat$sulfate, na.rm = TRUE)                       # draw from 'sulfate' column, display average
  } else if (pollutant == 'nitrate') {                    # elseif draw from 'nitrate' col
      mean(dat$nitrate, na.rm = TRUE)                     # display average 
    
                                                          #na.rm removes NA values from columns 
    
    }
}
