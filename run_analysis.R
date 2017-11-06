## GETTING AND CLEANING DATA COURSE PROJECT

## This project consists in the preparation of a tidy data set ("tidy_data.txt") from the original data sets 
##obtained during a project about Human Activity Recognition Using Smartphones.
##The experiments consisted in carrying out various measurements (features vector) on a group of 
##30 volunteers, while they were performing 6 six activities wearing a smartphone on the waist.
##The acquired data have been randomly partitioned into two sets, where 70% of the volunteers 
##was selected for generating the training data and 30% the test data. 

library(dplyr)
library(reshape2)

########################################################
## DOWNLOAD AND UNZIP DATASET
########################################################
activity_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
activity_file <- "activity.zip"

#Check if zip file already exists
if (!file.exists(activity_file)) {
  download.file(activity_url, activity_file)
}
dataPath <- "UCI HAR Dataset"

#Check if unzipped file already exists
if (!file.exists(dataPath)) {
  unzip(activity_file)
}
########################################################
## READ DATA AND MAKE TRAIN AND TEST DATA SETS
########################################################
#Acquisition of the data from train and test data sets 
subjects_train <- read.table(paste(dataPath,"/train/subject_train.txt",sep=""))
values_train <- read.table(paste(dataPath,"/train/X_train.txt",sep=""))
activity_train <- read.table(paste(dataPath,"/train/y_train.txt",sep=""))
  
subjects_test <- read.table(paste(dataPath,"/test/subject_test.txt",sep=""))
values_test <- read.table(paste(dataPath,"/test/X_test.txt",sep=""))
activity_test <- read.table(paste(dataPath,"/test/y_test.txt",sep=""))

features <- read.table(paste(dataPath,"/features.txt",sep=""))
activity_labels <- read.table(paste(dataPath,"/activity_labels.txt",sep=""))

#Rename data columns
colnames(subjects_train) <- "Subject"
colnames(activity_train) <- "Activity"
colnames(values_train) <- features[,2]

colnames(subjects_test) <- "Subject"
colnames(activity_test) <- "Activity"
colnames(values_test) <- features[,2]

colnames(activity_labels) <- c("Activity","ActivityType")

#Make the train and test data set
train <- cbind(subjects_train,activity_train,values_train)
test <- cbind(subjects_test,activity_test,values_test)

########################################################
## STEP 1. MERGE DATASTS TEST AND TRAIN
########################################################
#Merge the two datasets by binding their rows
allData <- rbind(train,test)

########################################################
## STEP 2. EXTRACT ONLY MEAN AND STANDARD DEVIATION FOR EACH MEASUREMENT
########################################################
#Make a logical dataframe that will allow us to select only the columns containing Subject, 
#Activity and variables containing the mean and the standard deviation mesurements
MeanStdColumns <- grepl("Subject|Activity|mean|std", colnames(allData))

#Use the generated dataframe to subset the data
MeanStdData <- allData[, MeanStdColumns]

########################################################
## STEP 3. USE DESCRIPTIVE ACTIVITY NAMES FOR ACTIVITIES IN THE DATA SET
########################################################
#Turn the column Activity of MeanStdData into factors
MeanStdData$Activity <- factor(MeanStdData$Activity,levels = activity_labels$Activity, labels = activity_labels$ActivityType)


########################################################
## STEP 4. LABEL DATA SET WITH DESCRIPTIVE VARIABLE NAMES 
########################################################
#Modify variables names
MeanStdDataCols <- colnames(MeanStdData)
MeanStdDataCols <- gsub("^t", "timeDomain", MeanStdDataCols)
MeanStdDataCols <- gsub("Acc", "Accelerometer", MeanStdDataCols)
MeanStdDataCols <- gsub("mean", "Mean", MeanStdDataCols)
MeanStdDataCols <- gsub("std", "StandardDeviation", MeanStdDataCols)
MeanStdDataCols <- gsub("Gyro", "Gyroscope", MeanStdDataCols)
MeanStdDataCols <- gsub("Mag", "Magnitude", MeanStdDataCols)
MeanStdDataCols <- gsub("^f", "frequencyDomain", MeanStdDataCols)
MeanStdDataCols <- gsub("Freq", "Frequency", MeanStdDataCols)
MeanStdDataCols <- gsub("BodyBody", "Body", MeanStdDataCols)
MeanStdDataCols <- gsub("[\\(\\)-]", "", MeanStdDataCols)
colnames(MeanStdData) <- MeanStdDataCols 

########################################################
## STEP 5. MAKE INDEPENDENT DATA SET WITH THE AVERAGE OF EACH VARIABLE FOR EACH ACTIVITY AND EACH SUBJECT 
########################################################
#Melt data in order to have a single variable column
allDataMelted <- melt(MeanStdData, id = c("Subject", "Activity"),na.rm = TRUE)

#Recast the data 
finalData <- dcast(allDataMelted, Subject + Activity ~ variable, mean)

#Print a txt file with the final data
write.table(finalData ,"tidy_data.txt", quote = FALSE,row.names = FALSE)


