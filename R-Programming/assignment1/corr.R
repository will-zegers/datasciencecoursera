source("utils.R")
source("complete.R")

corr <- function(directory, threshold = 0) {

    directory <- formatDir(directory)

    cr <- c()
    fileCount <- length(list.files(directory))
    
    cf <- complete(directory,1:fileCount)
    for (i in 1:fileCount) {
        if (cf$nobs[i] > threshold) {
            data <- openDataFile(directory, i)
            data <- data[complete.cases(data),]
            cr <- c(cr, cor(data$sulfate,data$nitrate))
        }
    }
    return(cr)
}
