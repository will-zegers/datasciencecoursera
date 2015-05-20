HOSPITAL.NAME <- 2

orderDataByCol <- function(outcomeData, col) {
    return(outcomeData[order(outcomeData[,col],outcomeData[,HOSPITAL.NAME]),])
}

readFile <- function() {

    numericCols <- c(11, 17,23)

    outcomeData <- read.csv(
        "outcome-of-care-measures.csv", colClasses="character")

    for (n in numericCols)
        outcomeData[,n] <- suppressWarnings(as.numeric(outcomeData[,n]))

    return(outcomeData)
}

getOutcomeCol <- function(outcome) {
    switch(outcome,
        "heart attack" = {
            return(11)
        },
        "heart failure" = {
            return(17)
        },
        {
            return(23)
        })
}

isValidState <- function(state) {

    validStates <- c(
    "AL","AK","AZ","AR","CA","CO","CT","DE","DC","FL","GA","GU","HI","ID",
    "IL","IN","IA","KS","KY","LA","ME","MD","MA","MI","MN","MS","MO","MT",
    "NE","NV","NH","NJ","NM","NY","NC","ND","OH","OK","OR","PA","PR","RI",
    "SC","SD","TN","TX","UT","VT","VI","VA","WA","WV","WI","WY")

    return(state %in% validStates)
}

isValidOutcome <- function(outcome) {

    validOutcomes <- c(
        "heart attack",
        "heart failure",
        "pneumonia"
    )

    return(outcome %in% validOutcomes)
}
