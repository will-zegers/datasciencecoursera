source("utils.R")

pollutantmean <- function(directory, pollutant, id=1:332) {
    data <- bindData(directory, id)
    if (0 == length(data) ||
        !isValidPm(pollutant)) {
        return(-1)
    }

    PM <- data[[pollutant]]

    return(mean(PM[!is.na(PM)]))
}
