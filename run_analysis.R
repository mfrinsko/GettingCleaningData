##Script for Getting and Cleaning Data Project

##Check to make sure that the working directory is created - create if not
if (!file.exists("~/Project")) {
        dir.create("~/Project")
}

##Set the working directory
setwd("~/Project")

##Download the files
##Install the downloader package and additional packages that get used throughout the script
library("downloader")
library("plyr")
library("dplyr")
library(data.table)

##Get the files and unzip them in the correct folder
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download(fileURL, destfile="Dataset.zip", mode = "wb")
unzip("Dataset.zip", exdir = ".")

##Gather the data together
##Read the TEST data into data frames
test_act <- read.table("./UCI HAR Dataset/test/y_test.txt")
test_sub <- read.table("./UCI HAR Dataset/test/subject_test.txt")
test_m <- read.table("./UCI HAR Dataset/test/X_test.txt")

##Convert to data tables
test_act <- data.table(test_act)
test_sub <- data.table(test_sub)
test_m <- data.table(test_m)

##Set the column names for the activity data to be descriptive
setnames(test_act, "V1", "ActivityID")

##Bring the test subject and activity data together; add descriptive column names
ts_act_sub <- cbind(test_sub, test_act)
setnames(ts_act_sub, "V1", "SubjectID")

##Add a column for the descriptive names of the activities
ts_act_sub$ActivityDescription <- ifelse(ts_act_sub$ActivityID == 1, "Walking", 
                                ifelse(ts_act_sub$ActivityID == 2, "Walking Upstairs", 
                                ifelse(ts_act_sub$ActivityID == 3, "Walking Downstairs", 
                                ifelse(ts_act_sub$ActivityID == 4, "Sitting", 
                                ifelse(ts_act_sub$ActivityID == 5, "Standing", 
                                ifelse(ts_act_sub$ActivityID == 6, "Laying", "Error"))))))

##Add a column to identify the subject as a TEST subject
ts_act_sub <- mutate(ts_act_sub, SubjectType = "Test")

##Order the columns to put subject fields together and remove the activity ID
ts_act_sub <- select(ts_act_sub, SubjectID, SubjectType, ActivityDescription)

##Use features.txt to create col names for the measurements data
feat <- read.table("./UCI HAR Dataset/features.txt")
feat_names <- as.character(feat$V2)
setnames(test_m, feat_names)

##Remove the columns that don't include mean measurements
test_mean <- select(test_m, contains("mean"))
test_std <- select(test_m, contains("std"))
test_ms <- cbind(test_mean, test_std)

##Join the measurements to the subject and activity data for the test subjects
ts_full <- cbind(ts_act_sub, test_ms)

##Repeat the process for the TRAIN data set
##Read the TRAIN data into data frames
train_act <- read.table("./UCI HAR Dataset/train/y_train.txt")
train_sub <- read.table("./UCI HAR Dataset/train/subject_train.txt")
train_m <- read.table("./UCI HAR Dataset/train/X_train.txt")

##Convert to data tables
train_act <- data.table(train_act)
train_sub <- data.table(train_sub)
train_m <- data.table(train_m)

##Set the column names for the activity data to be descriptive
setnames(train_act, "V1", "ActivityID")

##Bring the train subject and activity data together; add descriptive column names
tr_act_sub <- cbind(train_sub, train_act)
setnames(tr_act_sub, "V1", "SubjectID")

##Add a column for the descriptive names of the activities
tr_act_sub$ActivityDescription <- ifelse(tr_act_sub$ActivityID == 1, "Walking", 
                                  ifelse(tr_act_sub$ActivityID == 2, "Walking Upstairs", 
                                  ifelse(tr_act_sub$ActivityID == 3, "Walking Downstairs", 
                                  ifelse(tr_act_sub$ActivityID == 4, "Sitting", 
                                  ifelse(tr_act_sub$ActivityID == 5, "Standing", 
                                  ifelse(tr_act_sub$ActivityID == 6, "Laying", "Error"))))))

##Add a column to identify the subject as a TRAIN subject
tr_act_sub <- mutate(tr_act_sub, SubjectType = "Train")

##Order the columns to put subject fields together and remove the activity ID
tr_act_sub <- select(tr_act_sub, SubjectID, SubjectType, ActivityDescription)

##Use the feature name vector created above to create column names for the measurements
setnames(train_m, feat_names)

##Remove the columns that don't include mean and SD measurements and create one data set of these
train_mean <- select(train_m, contains("mean"))
train_std <- select(train_m, contains("std"))
train_ms <- cbind(train_mean, train_std)

##Join the measurements to the subject and activity data for the test subjects
tr_full <- cbind(tr_act_sub, train_ms)

##Get the test and train data sets into a single data set and then order it by subject and activity
all_data <- rbind(tr_full, ts_full)
all_data <- arrange(all_data, SubjectID, SubjectType, ActivityDescription)

##Change the column names to be more descriptive for the measurements

cols <- names(all_data)
cols <- gsub("[[:punct:]]", "", cols)
cols <- gsub("mean", "Mean", cols)
cols <- gsub("std", "StandardDeviation", cols)
cols <- gsub("fBody", "FrequencyBody", cols)
cols <- gsub("tBody", "TimeBody", cols)
cols <- gsub("tGravity", "TimeGravity", cols)
cols <- gsub("gravity", "Gravity", cols)
cols <- gsub("BodyBody", "Body", cols)
cols <- gsub("Gyro", "Gyroscope", cols)
cols <- gsub("Mag", "Magnitude", cols)
cols <- gsub("angle", "Angle", cols)
cols <- gsub("Acc", "Accelerometer", cols)

setnames(all_data, cols)

##Build a new data set with the average of each variable for each activity and subject
##First group the data set
all_by_actsub <- group_by(all_data, SubjectID, ActivityDescription)

all_means <- summarise_each(all_by_actsub, funs(mean), TimeBodyAccelerometerMeanX:FrequencyBodyGyroscopeJerkMagnitudeStandardDeviation)

##Write the table to a file to be uploaded
write.table(all_means, file = "tidy_data.txt", row.names = FALSE, sep="|")

