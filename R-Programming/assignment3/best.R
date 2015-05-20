source("util.R")

best <- function(state, outcome, bestNotWorst = TRUE) {

    if(!isValidState(state))
        stop("invalid state")
    if(!isValidOutcome(outcome))
        stop("invalid outcome")

    col <- getOutcomeCol(outcome)
    outcomeData <- readFile()

    stateData <- outcomeData[outcomeData$State == state,]
    if (bestNotWorst)
        return(stateData[which.min(stateData[,col]),]$Hospital.Name)
    else
        return(stateData[which.max(stateData[,col]),]$Hospital.Name)
}
