source("utils.R")

complete <- function(directory, id=1:332) {
    
    nobs <- c()

    for (i in id) {
        data <- openDataFile(directory,i)
        data <- data[complete.cases(data),]
        nobs <- c(nobs,nrow(data))        
    }
    
    return(data.frame(id,nobs))
}
