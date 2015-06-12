library(dplyr)

if(!file.exists("./data")){dir.create("./data")}

fileUrl  <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
destFile <- './data/dataset.zip'

if(!file.exists(destFile)) {
    print('[+] Downloading file...')
    if (download.file(fileUrl, destFile, method='curl') != 0)
        stop('[-] Problem downloading file')
}

print('[+] Extracting and reading data file...')
dataFiles <- unzip(destFile)

Features <- make.names(read.table(dataFiles[2])[,2], unique = T)
ActivityLabels <- read.table(dataFiles[1])[,2]

print('[+] Reading test and train data...')
HARUSdata <- rbind(
    #Read subject, y, and x data files for TEST
    cbind(data.frame(Subject=scan(dataFiles[14])),
        data.frame(Activity=scan(dataFiles[16]))) %>% 
    mutate(Type='Test') %>%
    cbind(data.frame(read.table(dataFiles[15]))),

    #Read subject, y, and x data files for TRAIN
    cbind(data.frame(Subject=scan(dataFiles[26])),
        data.frame(Activity=scan(dataFiles[28]))) %>% 
    mutate(Type='Train') %>%
    cbind(data.frame(read.table(dataFiles[27])))
) %>% 
mutate(Activity=ActivityLabels[Activity])

colnames(HARUSdata) <- c('Subject','Activity','Type',as.character(Features))

HARUSdata <- select(HARUSdata, Subject:Type, matches(".*mean[^(Freq)]|std.*", ignore.case=FALSE)) %>%
    arrange(Subject, Activity, desc(Type))

#Clean up
rm(dataFiles, Features, ActivityLabels, fileUrl, destFile)

HARUSaverages <- group_by(HARUSdata, Subject,Activity) %>%
    summarise_each(funs(mean), -Subject, -Activity, -Type)

View(HARUSaverages)
