library(dplyr)

# Raed the files into R

### Activity Files
dataActivityTest <- read.table("test/y_test.txt", head=FALSE)
dataActivityTrain <- read.table("train/y_train.txt", head=FALSE)


### Subject Files
dataSubjectTrain <- read.table("test/subject_test.txt", head=FALSE)
dataSubjectTest <- read.table("train/subject_train.txt", head=FALSE)


### Feature Files
dataFeaturesTest <- read.table("test/X_test.txt", head=FALSE)
dataFeaturesTrain <- read.table("train/X_train.txt", head=FALSE)

dataFeaturesNames <- read.table("features.txt" ,head=FALSE)

### Getting a sense of the data

str(dataSubjectTrain)
str(dataSubjectTest)
str(dataActivityTrain)
str(dataActivityTest)
str(dataFeaturesTrain)
str(dataFeaturesTest)




# 1. Merges the training and the test sets to create one data set.

### Merges the rows of training and test sets.
dataSubject <- rbind(dataSubjectTrain, dataSubjectTest) # 1 variable
dataActivity <- rbind(dataActivityTrain, dataActivityTest) # 1 variable
dataFeatures <- rbind(dataFeaturesTrain, dataFeaturesTest) # 561 variables

### naming the variables
names(dataSubject) <- c("subject")
names(dataActivity) <- c("activity")
names(dataFeatures)<- dataFeaturesNames$V2

### Merge all the datasets by columns to create one data table
combineSubAct <- cbind(dataSubject, dataActivity)
Data <- cbind(dataFeatures, combineSubAct)



# 2. Extracts only the measurements on the mean and standard deviation for each measurement.

### Find all variables containing the string 'mean' or 'std'
subdataFeaturesNames <- dataFeaturesNames$V2[grep("mean\\(\\)|std\\(\\)", dataFeaturesNames$V2)]

### Subset relavant columns inluding the 'activity' and 'subject' columns.
selectedNames <- c(as.character(subdataFeaturesNames), "subject", "activity")
Data <- subset(Data, select = selectedNames)



# 3. Uses descriptive activity names to name the activities in the data set

activityLabels <- read.table("activity_labels.txt" ,header = FALSE)
activityLabelNames <- as.character(activityLabels$V2)
Data$activity <- factor(Data$activity, levels = c(1,2,3,4,5,6), labels = c(activityLabelNames))

head(Data$activity, 10)


# 4. Appropriately label the data set with descriptive variable names. 

### The variable in the subject, activity and the acitivy names have already been
### appropriately labeled. see 2. However, the names of the features will be replaced
### with full descriptive variables. 

### prefix t is replaced by time, Acc is replaced by Accelerometer, Gyro is replaced by Gyroscope
### prefix f is replaced by frequency, Mag is replaced by Magnitude, BodyBody is replaced by Body

names(Data) <- gsub("^t", "time", names(Data))
names(Data) <- gsub("^f", "frequency", names(Data))
names(Data) <- gsub("Acc", "Accelerometer", names(Data))
names(Data) <- gsub("Gyro", "Gyroscope", names(Data))
names(Data) <- gsub("Mag", "Magnitude", names(Data))
names(Data) <- gsub("BodyBody", "Body", names(Data))

head(names(Data), 20)


# 5. From the data set in step 4, create a second, independent tidy data set with the average of 
# each variable for each activity and each subject.

DataMean <- aggregate(. ~subject + activity, data = Data, mean)
DataMean <- DataMean[order(DataMean$subject,DataMean$activity),]
write.table(DataMean, file = "tidydata.txt", row.name = FALSE)

