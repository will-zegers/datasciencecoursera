source("util.R")

rankall <- function(outcome, num = "best") {

    if(!isValidOutcome(outcome))
        stop("invalid outcome")

    outcomeData <- readFile()
    col <- getOutcomeCol(outcome)
    orderedData <- lapply(split(
        outcomeData, outcomeData$State), orderDataByCol, col)

    m <- matrix(nrow=0,ncol=2)
    colnames(m) <- c("hospital","state")

    lapply(orderedData, function(x) {

        state <- x[1,]$State
        name <- if (num == "best") {
            x[1,]$Hospital.Name
        } else if (num == "worst") {
            x[which.max(x[,col]),]$Hospital.Name
        } else {
            x[num,]$Hospital.Name
        }

        m <<- rbind(m, c(name,state))
    })

    return(data.frame(m))
}
