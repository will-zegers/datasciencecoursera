source("util.R")
source("best.R")

rankhospital <- function(state, outcome, num="best") {

    if(!isValidState(state))
        stop("invalid state")
    if(!isValidOutcome(outcome))
        stop("invalid outcome")

    if ("best" == num)
        return(best(state,outcome))
    else if ("worst" == num)
        return(best(state,outcome,FALSE))

    col <- getOutcomeCol(outcome)
    outcomeData <- readFile()

    stateData <- outcomeData[outcomeData$State == state,]

    stateData <- orderDataByCol(stateData, col)
    return(stateData[num,]$Hospital.Name)
}
