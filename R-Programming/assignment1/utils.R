formatDir <- function(dir) {
    if ("/" != substring(dir,nchar(dir),nchar(dir))) {
        dir <- paste0(dir, "/")
    }
    return(dir)
}
    

openDataFile <- function(directory, id) {

    directory <- formatDir(directory)

    while(nchar(id) < 3) {
        id <- paste0("0",id)
    }

    fileStr <- paste0(directory, id, ".csv")

    if(!file.exists(fileStr)) { 
        return(NULL)
    }

    return(read.csv(fileStr))
}

bindData <- function(directory, id) {

    data <- data.frame()

    for (i in id) {
        file <- openDataFile(directory, i)
        
        if (0 == length(file)) {
            next
        }
        data <- rbind(data, file)
    }
    return(data)
}

isValidPm <- function(pollutant) {
    return(identical(pollutant,"nitrate") ||
        identical(pollutant,"sulfate"))
}
